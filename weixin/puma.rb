pidfile "/tmp/wein.pid"
state_path "/tmp/wein.state"
daemonize true
workers 2
threads 0,16
bind 'tcp://0.0.0.0:8000'
environment 'production'
on_restart do
  puts 'On restart...'
end

preload_app!
