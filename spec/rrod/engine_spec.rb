require 'spec_helper'

describe Rrod::Engine do
  describe 'rails initialization' do
    let(:client) { Rrod.configuration.client }

    it 'configures the rrod client' do
      expect(client.nodes.first.host).to eq('first.host.information')
    end

  end

end
