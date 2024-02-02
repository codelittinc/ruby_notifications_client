# frozen_string_literal: true

require 'ruby_notifications_client/request'

module RubyNotificationsClient
  class NotificationsClient
    def initialize(api_key = nil)
      @key = api_key || ENV.fetch('NOTIFICATIONS_API_KEY', nil)
      @url = 'https://api.notifications.codelitt.dev'
    end

    def authorization
      "Bearer #{@key}"
    end

    def build_url(path)
      "#{@url}#{path}"
    end

    def request(path, body)
      url = build_url(path)
      response = Request.post(url, authorization, body)
      JSON.parse(response.body) if response&.body
    end
  end
end
