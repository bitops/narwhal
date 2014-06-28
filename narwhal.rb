require 'sinatra'
require 'resque'
require 'redis'
require './increment_count'

# connect to Redis
r = Redis.new

# initialize count
r.set('narwhal_count', 0)

# make sure Resque knows what to do
Resque.redis = r

get '/' do
  "App is alive, counter is #{r.get('narwhal_count')}"
end

get '/up' do
  Resque.enqueue(IncrementCount)
  "OK"
end
