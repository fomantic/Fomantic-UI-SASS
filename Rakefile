begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

# rake convert[2.7.1]
desc 'Convert semantic-ui less to sass'
task :convert, :branch do |_t, args|
  require './tasks/converter'
  branch = args[:branch]
  puts "Converting branch #{branch}"
  Converter.new(branch).process
end

begin
  require 'rspec/core/rake_task'
  ::RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  return
end

begin
  require 'rubocop/rake_task'
  ::RuboCop::RakeTask.new
rescue LoadError
  return
end

task default: %i[rubocop spec]
