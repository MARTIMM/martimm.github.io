# Site Design

```plantuml
scale 0.8

skinparam packageStyle Rectangle

package sidebar {}
package index {}
package favicon {}

index -> sidebar
sidebar *-> favicon
```


```plantuml
@startyaml
scale 0.8

skinparam packageStyle Rectangle

index:
  layout:
    sidebar:
      
@endyaml
```

