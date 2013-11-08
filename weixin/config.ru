require 'bundler'
Bundler.require

require ::File.expand_path('../application',  __FILE__)
run Sinatra::Application

if ENV['RACK_ENV'] == 'production'
  $stderr.reopen(File.new(File.expand_path("../log/production.log",  __FILE__), "a+"))
  $stderr.sync = true
end
