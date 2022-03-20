require "slack-notify"
require 'clockwork'
require 'active_support/time'

include Clockwork

handler do |job|
    puts "Running #{job}"
    sample = SlackNotify::Client.new(webhook_url: "#")
    sample.notify("3分に1回送ります")
end

every(3.minutes, 'less.frequent.job')
