# frozen_string_literal: true

require 'ruby_notifications_client'

RSpec.describe RubyNotificationsClient::Direct do
  context '#send' do
    it 'sends a message' do
      VCR.use_cassette('direct#send') do
        response = RubyNotificationsClient::Direct.new.send('123', 'kaiomagalhaes')
        expect(response['notification_id']).to eql('8172')
      end
    end
  end
end
