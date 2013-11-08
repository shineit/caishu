require 'daemons'

commend = ARGV[0] || 'start'
current_path = File.expand_path('..', __FILE__)
%W(
  add_jokes_queue.subscribe.rb
  resize_upload_focus_photos.queue.rb
  resize_upload_photos.queue.rb
).each do |s|
  system("ruby #{File.join(current_path, s)} #{commend}")
end
