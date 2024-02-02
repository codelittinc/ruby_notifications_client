# frozen_string_literal: true

require "ruby_notifications_client/notifications_client"

module RubyNotificationsClient
  class Reactji < NotificationsClient
    def send(reaction, channel, notification_id)
      request("/reactions", {
                reaction:,
                channel:,
                notification_id:
              })
    end
  end
end
