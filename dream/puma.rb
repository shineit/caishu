pidfile "/tmp/dream.pid"
state_path "/tmp/drea,.state"
daemonize true
workers 2
threads 0,32
bind 'tcp://0.0.0.0:6001'
environment 'production'
on_restart do
  puts 'On restart...'
end

preload_app!
