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

This gem isn't published to RubyGems yet. For now, you can just clone this repo.

From there, you have two options:

1. Use Bundler, and add a line line `gem 'mruby-rake-tasks', path: 'path/to/your/clone'` to your Gemfile.
2. Install mruby-rake-tasks in the system gem cache with `cd path/to/your/clone && rake install`

## Usage

In your mrbgem source, define a Rakefile and add `require 'mruby/rake/tasks'`.
