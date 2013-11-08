require 'daemons'

commend = ARGV[0] || 'start'
current_path = File.expand_path('..', __FILE__)
%W(
  add_jokes_queue.subscribe.rb
  focus_upload_queue.subscribe.rb
  mutiphotos_upload_queue.subscribe.rb
  resize_pic.queue.subscribe.rb
).each do |s|
  system("ruby #{File.join(current_path, s)} #{commend}")
end

puts system("ps -ef|grep queue.subscribe")