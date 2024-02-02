# frozen_string_literal: true

require 'ruby_notifications_client'

RSpec.describe RubyNotificationsClient::Channel do
  context '#send' do
    it 'sends a message' do
      VCR.use_cassette('channel#send') do
        response = RubyNotificationsClient::Channel.new.send('123', 'feed-test-automations')
        expect(response['notification_id']).to eql('8152')
      end
    end
  end

  context '#update' do
    it 'updates the message' do
      VCR.use_cassette('channel#update') do
        response = RubyNotificationsClient::Channel.new.update("i'm batman", 'feed-test-automations',
                                                               '1630766885.002600')
        expect(response['text']).to eql("i'm batman")
      end
    end
  end
end
