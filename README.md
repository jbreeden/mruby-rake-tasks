# MRuby Rake Tasks

This gem provides a few rake tasks that invert the control of the mruby build process.

Rather than modifying the `build_config.rb` in your mruby checkout to define the gems you'd
like to include, you maintain a local `build_config.rb` file in the gem you're developing.
Then, use the rake tasks from this gem to build mruby, and the artifacts will be output
to the mrbgem's `./build` directory.

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
