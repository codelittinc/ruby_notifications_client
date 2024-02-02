# frozen_string_literal: true

require "ruby_notifications_client/notifications_client"

module RubyNotificationsClient
  class Direct < NotificationsClient
    def send(message, username, uniq = false)
      return if !username || username.size < 3

      request("/direct_messages", {
                message:,
                username:,
                uniq:
              })
    end
  end
end
