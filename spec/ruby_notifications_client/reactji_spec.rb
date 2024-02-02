# frozen_string_literal: true

require 'ruby_notifications_client'

RSpec.describe RubyNotificationsClient::Reactji do
  context '#send' do
    it 'sends a message' do
      VCR.use_cassette('reactji#send') do
        response = RubyNotificationsClient::Reactji.new.send('scream', 'feed-test-automations', '1630765245.000700')

        expect(response['ok']).to eql(true)
      end
    end
  end
end
