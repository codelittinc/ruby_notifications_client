# frozen_string_literal: true

require_relative 'ruby_notifications_client/version'

mydir = __dir__
Dir["#{mydir}/ruby_notifications_client/*.rb"].sort.each { |file| require file }

module RubyNotificationsClient
  class Error < StandardError; end
end
