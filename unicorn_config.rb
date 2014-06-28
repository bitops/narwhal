worker_processes 1 # amount of unicorn workers to spin up
timeout 30         # restarts workers that hang for 30 seconds

@resque_pid = nil
@resque_scheduler_pid = nil

before_fork do |server, worker|
  @resque_pid ||= spawn("bundle exec rake resque:work QUEUE=*")
  @resque_scheduler_pid ||= spawn("bundle exec rake resque:scheduler")
end
