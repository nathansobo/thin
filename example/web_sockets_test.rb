dir = File.dirname(__FILE__)

$:.unshift("#{dir}/../lib")
require "rubygems"
require "thin"

app = lambda do |env|
  [200, {}, "hello there!"]
end

Thin::Server.start do
  run app
end