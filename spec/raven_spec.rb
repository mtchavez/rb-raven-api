require 'spec_helper'

describe Raven do

  context 'configuration' do

    it 'takes block to set config' do
      Raven.configure do |config|
        config.api_key = 'test-key'
      end
      Raven.config.api_key.should eql 'test-key'
    end

    it 'can be accessed after being set' do
      Raven.configure do |config|
        config.api_key = 'test-key'
      end
      Raven.config.api_key.should eql 'test-key'
      Raven.config.api_key = 'new-key'
      Raven.config.api_key.should eql 'new-key'
    end

    it 'can set api key without block' do
      Raven.configure 'test-key'
      Raven.config.api_key.should eql 'test-key'
      Raven.configure
      Raven.config.api_key.should be_nil
    end

  end

end
