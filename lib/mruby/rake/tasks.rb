def gen_build_config
  cp "#{ENV['MRUBY_HOME']}/build_config.rb", './build_config.rb'
end

if !ENV['MRUBY_HOME']
  # Maybe MRuby is next to this gem?
  ENV['MRUBY_HOME'] ||= Dir.pwd + '/../mruby'
end

# Still no luck? Raise hell! 
if !ENV['MRUBY_HOME'] || !File.directory?(ENV['MRUBY_HOME'])
  $stderr.puts 'Unable to find MRuby. Please set $MRUBY_HOME.'
  exit 1
end

# When calling mruby rake tasks, use the local build_config.rb
ENV['MRUBY_CONFIG'] = ENV['MRUBY_CONFIG'] || Dir.pwd + '/build_config.rb'
if !File.exists?(ENV['MRUBY_CONFIG'])
  gen_build_config
end

namespace :mruby do
  desc 'Clean the mruby build artifacts'
  task :clean do
    if File.directory?('build')
      rm_rf 'build'
    end
    cd ENV['MRUBY_HOME'] {
      sh 'rake clean'
    }
  end

  desc 'Deep clean mruby build artifacts and gems'
  task :deep_clean do
    if File.directory?('build')
      rm_rf 'build'
    end
    cd ENV['MRUBY_HOME'] {
      sh 'rake deep_clean'
    }
  end

  desc 'Build mruby with the local build_config'
  task :build do
    if File.directory?('build')
      rm_rf 'build'
    end
    mkdir 'build'
    cd ENV['MRUBY_HOME'] {
      sh 'rake default'
    }
    cp_r Dir["#{ENV['MRUBY_HOME']}/build/host/{bin,lib}"], 'build'
  end

  namespace :gen do
    desc 'Copies $MRUBY_HOME/build_config.rb into this project'
    task :build_config do
      gen_build_config
    end
  end
end
