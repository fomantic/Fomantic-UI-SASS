require 'bundler/gem_tasks'

desc 'Convert semantic-ui less to sass'
task :convert, :branch do |_t, args|
  require './tasks/converter'
  branch = args[:branch]
  Converter.new(branch).process
end

begin
  require 'rspec/core/rake_task'
  ::RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  return
end

require 'rubocop/rake_task'
::RuboCop::RakeTask.new

task default: %i[rubocop spec]
