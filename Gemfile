# After a long time not using it, I got trouble getting it running again.
# One of the things to do is install the ruby develpment package. So here
# is a small list;
# - Install the development package of ruby
# - Throw away the vendor directory
# - Throw the Gemfile.lock too
# - Run 'gem install jekyll bundler'
# - Run 'bundle install'
# - Run 'bundle add webrick'
# - Finally run 'bundle exec jekyll serve'


source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
gem "jekyll", "~> 3.9.0"

# This is the default theme for new Jekyll sites. You may change this to anything you like.
#gem "minima", "~> 2.0"

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
gem "github-pages", group: :jekyll_plugins

# If you have any plugins, put them here!
group :jekyll_plugins do
#  gem "jekyll-feed", "~> 0.6"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Performance-booster for watching directories on Windows
#gem "wdm", "~> 0.1.0" if Gem.win_platform?


# Plantuml use

gem "webrick", "~> 1.9"
