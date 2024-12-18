---
title: MARTIMM's projects
layout: sidebar
nav_menu: default-nav
sidebar_menu: api2-tuts-sidebar
---
Here's a basic example of how to use Cairo with GTK 4 in C:

#include <gtk/gtk.h>
#include <cairo.h>

static cairo_surface_t *surface = NULL;

static void
clear_surface (void)
{
    cairo_t *cr;
    
    cr = cairo_create(surface);
    cairo_set_source_rgb(cr, 1, 1, 1); // White
    cairo_paint(cr);
    cairo_destroy(cr);
}

static void
resize_cb (GtkWidget *widget,
          int        width,
          int        height,
          gpointer   data)
{
    if (surface)
        cairo_surface_destroy(surface);
    
    surface = gdk_surface_create_similar_surface(gtk_widget_get_native(widget)->surface,
                                                CAIRO_CONTENT_COLOR,
                                                width, height);
    
    clear_surface();
}

static gboolean
draw_callback (GtkDrawingArea *area,
              cairo_t         *cr,
              int               width,
              int               height,
              gpointer          user_data)
{
    cairo_set_source_surface(cr, surface, 0, 0);
    cairo_paint(cr);
    return FALSE;
}

static void
draw_brush (GtkWidget *widget,
            double     x,
            double     y)
{
    cairo_t *cr;
    
    cr = cairo_create(surface);
    cairo_rectangle(cr, x - 3, y - 3, 6, 6);
    cairo_fill(cr);
    cairo_destroy(cr);
    
    gtk_widget_queue_draw(widget);
}

static void
drag_begin (GtkGestureDrag *gesture,
             double          x,
             double          y,
             GtkWidget      *area)
{
    draw_brush(area, x, y);
}

static void
drag_update (GtkGestureDrag *gesture,
             double          x,
             double          y,
             GtkWidget      *area)
{
    draw_brush(area, x, y);
}

int main(int argc, char *argv[])
{
    GtkApplication *app;
    GtkWidget *window, *drawing_area;

    app = gtk_application_new("org.example.DrawingApp", G_APPLICATION_DEFAULT_FLAGS);
    g_signal_connect(app, "activate", G_CALLBACK(lambda_main), NULL);

    window = gtk_application_window_new(app);
    gtk_window_set_title(GTK_WINDOW(window), "Cairo Drawing");

    drawing_area = gtk_drawing_area_new();

    g_signal_connect(drawing_area, "draw", G_CALLBACK(draw_callback), NULL);
    g_signal_connect(drawing_area, "resize", G_CALLBACK(resize_cb), NULL);

    gtk_container_add(GTK_CONTAINER(window), drawing_area);

    gtk_widget_show_all(window);

    g_application_run(G_APPLICATION(app), argc, argv);
}

void lambda_main(GtkApplication *app, gpointer user_data)
{
    // Implementation of lambda_main...
}

Summary and best practices:

This example demonstrates how to use Cairo with GTK 4 in C. Here's a summary of the key components and best practices:

    We create a surface to store our drawings.
    The clear_surface function initializes the surface to white.
    The resize_cb function recreates the surface when the widget is resized.
    The draw_callback function is called when the drawing area needs to be redrawn. It paints the surface onto the widget.
    The draw_brush function allows us to draw on the surface.
    We handle drag events to allow freehand drawing.
    We use GTK Application and connect signals properly.

Best practices followed:

    Properly managing Cairo surfaces
    Handling resize events
    Using appropriate event handlers
    Separating drawing logic from UI construction

This example provides a foundation for using Cairo with GTK 4. You can expand upon this to create more complex drawings or add additional features as needed.
