# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::Views do
  let(:client) { Slack::Web::Client.new }
  context 'views_open' do
    it 'requires trigger_id' do
      expect { client.views_open(view: ' ') }.to raise_error ArgumentError, /Required arguments :trigger_id missing/
    end
    it 'requires view' do
      expect { client.views_open(trigger_id: '12345.98765.abcd2358fdea') }.to raise_error ArgumentError, /Required arguments :view missing/
    end
  end
  context 'views_push' do
    it 'requires trigger_id' do
      expect { client.views_push(view: ' ') }.to raise_error ArgumentError, /Required arguments :trigger_id missing/
    end
    it 'requires view' do
      expect { client.views_push(trigger_id: '12345.98765.abcd2358fdea') }.to raise_error ArgumentError, /Required arguments :view missing/
    end
  end
  context 'views_update' do
    it 'requires view' do
      expect { client.views_update }.to raise_error ArgumentError, /Required arguments :view missing/
    end
  end
end
