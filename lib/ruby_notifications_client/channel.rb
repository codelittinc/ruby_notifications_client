# frozen_string_literal: true

require "ruby_notifications_client/notifications_client"

module RubyNotificationsClient
  class Channel < NotificationsClient
    def list
      RubyNotificationsClient::Request.get("#{@url}/api/channels", authorization)
    end

    def send(message, channel, notification_id = nil, uniq = false)
      request("/channel_messages", {
                message:,
                channel:,
                notification_id:,
                uniq:
              })
    end

    def update(message, channel, notification_id)
      url = build_url("/channel_messages/#{notification_id}")
      response = RubyNotificationsClient::Request.patch(url, authorization, {
                                 message:,
                                 channel:,
                                 notification_id:
                               })
      JSON.parse(response.body)
    end
  end
end
