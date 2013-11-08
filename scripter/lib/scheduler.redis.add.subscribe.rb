require 'rufus-scheduler'
require "redis"

REDIS = Redis.new(host: '127.0.0.1', port: '6379', password: 'redis')

scheduler = Rufus::Scheduler.new
scheduler.every '1s' do
  key = 'peter::2013.10.16'
  puts cache = REDIS.get(key)

  if cache.nil?
    REDIS.set(key, "1")
  end

  REDIS.incr(key)
end

scheduler.join