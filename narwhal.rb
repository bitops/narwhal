require 'sinatra'
require 'resque'
require 'redis'
require './increment_count'

COUNT_KEY = 'narwhal_count'

# connect to Redis
r = Redis.new

# initialize count
r.set(COUNT_KEY) if r.get(COUNT_KEY).to_i != 0

# make sure Resque knows what to do
Resque.redis = r

get '/' do
  "App is alive, counter is #{r.get(COUNT_KEY)}"
end

get '/up' do
  Resque.enqueue(IncrementCount)
  "OK"
end
