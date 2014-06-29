require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :run do
  require_relative 'main'
end

task :default => :spec
task :default => :run
