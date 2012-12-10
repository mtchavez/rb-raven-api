require 'spec_helper'

describe Raven::Config do

  let(:config) { Raven::Config.new }

  describe 'initialize' do

    it 'sets default host' do
      config.host.should eql Raven::Config::DEFAULT_HOST
    end

    it 'sets default port' do
      config.port.should eql 80
    end

  end

end
