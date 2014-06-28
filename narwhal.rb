require 'sinatra'
require 'resque'
require 'redis'
require './increment_count'

Resque.redis = Redis.new

get '/' do
  "App is alive, counter is #{Redis.new.get('narwhal_count')}"
end

get '/up' do
  Resque.enqueue(IncrementCount)
  "OK"
end
