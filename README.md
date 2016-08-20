# MRuby Rake Tasks

Provides tasks for building mruby. You define a `build_config.rb` file for building mruby,
tell it where mruby is checked out, and it will build your mruby into `./build`.

Tasks include:

```
rake mruby:build             # Build mruby with the local build_config
rake mruby:clean             # Clean the mruby build artifacts
rake mruby:deep_clean        # Deep clean mruby build artifacts and gems
rake mruby:gen:build_config  # Copies $MRUBY_HOME/build_config.rb into this project
```

## Installation

Clone this repo & `rake install`. (Haven't published to rubygems yet)

## Usage

In your mrbgem source, define a Rakefile and add `require 'mruby/rake/tasks'`.
