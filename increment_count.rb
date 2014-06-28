require 'resque'

class IncrementCount
  @queue = :default

  def self.perform
    # mimic stuff taking a little time on the backend
    sleep(rand(0.5)) 
    Redis.new.incr("narwhal_count")
  end
end
