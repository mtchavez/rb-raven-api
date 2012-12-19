require 'spec_helper'

describe Raven::Engines do

  describe 'all' do

    use_vcr_cassette 'engines/all', :record => :none

    before do
      @res = Raven::Engines.all
    end

    it 'returns response results' do
      @res.should be_success
      @res.body.should_not be_nil
      @res.code.should eql 200
      @res.params.should be_nil
      @res.path.should eql '?method=engines&key=test-key&format=json'
    end

    it 'returns all engines' do
      engines = @res.parsed_body
      engines.should be_an_instance_of(Array)
      engines.should have(150).items
    end

  end

end
