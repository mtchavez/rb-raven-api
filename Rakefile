require 'rubygems'
require 'bundler'
require 'yard'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

desc 'Run specs'
RSpec::Core::RakeTask.new('spec') do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

task :default => 'spec'

YARD::Rake::YardocTask.new(:doc) do |t|
  t.files   = ['lib/**/*.rb', '-', 'README.md', 'CHANGELOG.rdoc']
  t.options = ['no-private']
end
