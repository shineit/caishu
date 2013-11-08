require 'yaml'
CORE_ROOT = File.expand_path("../..", __FILE__)

# CREDIS = ConnectionPool.new(size: 5) do
#   r = Redis.new(host: '127.0.0.1', port: '6379', password: 'redis')
#   r.select(2)
#   r
# end
# $redis = ConnectionPool::Wrapper.new(:size => 5, :timeout => 3) {
# 	r = Redis.new(host: '127.0.0.1', port: '6379', password: 'redis') 
# 	r.select(2)
# 	r
# }