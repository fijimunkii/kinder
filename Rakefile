#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Kinder::Application.load_tasks

namespace :travis do
  desc "Prepare DB and run Tests"
  task :run do
    ["db:create", "db:migrate RAILS_ENV=test", "spec", "jasmine:ci"].each do |cmd|
      puts "Starting to run \#{cmd}..."
      system("bundle exec rake \#{cmd}")
      raise "\#{cmd} failed!" unless $?.exitstatus == 0
    end
  end
end

namespace :spec do
  desc "Run the code examples in spec/features"
  task :features do
    Rails.env = ENV['RAILS_ENV'] = 'test'
    ENV['SPEC'] = "spec/features/**/*_spec.rb"
    Rake::Task['spec'].invoke
  end
end

namespace :guard do
  desc "Start Guard"
  task :run do
    system("bundle exec guard")
  end
end
