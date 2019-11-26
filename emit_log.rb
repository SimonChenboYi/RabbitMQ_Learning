#!/usr/bin/env ruby

require "bundler/setup"
require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel

# it just broadcasts all the messages it receives to all the queues it knows
# queues bind to the exchange in the receive_logs.rb
exchange = channel.fanout('logs')

message = ARGV.empty? ? 'Hello World!' : ARGV.join(' ')

exchange.publish(message)
puts " [x] Sent #{message}"

connection.close
