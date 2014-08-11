require 'pusher'

Pusher.url = "http://#{ENV['PUSHER_ID']}:#{ENV['PUSHER_SECRET']}@api.pusherapp.com/apps/84438"
Pusher.logger = Rails.logger
