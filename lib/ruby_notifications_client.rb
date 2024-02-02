# frozen_string_literal: true

require_relative "ruby_notifications_client/version"

module RubyNotificationsClient
  class Error < StandardError; end

  class Potato
    def self.hello
      puts "Hello, I'm a potato"
    end
  end
end
