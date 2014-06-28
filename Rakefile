require "resque/tasks"
require 'resque/scheduler/tasks'
require 'yaml'
require "./increment_count"

namespace :resque do
  task :setup do
    require 'resque'
    require 'resque-scheduler'

    Resque.schedule = YAML.load_file('schedule.yml')
  end
end
