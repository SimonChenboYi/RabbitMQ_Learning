#!/usr/bin/env ruby

require "bundler/setup"
require 'bunny'

connection = Bunny.new(automatically_recover: false)
connection.start

channel = connection.create_channel
exchange = channel.topic('topic_logs')
severity = ARGV.shift || 'fun.info'

message = ARGV.empty? ? 'Hello World!' : ARGV.join(' ')

exchange.publish(message, routing_key: severity)
puts " [x] Sent #{message}"

connection.close
