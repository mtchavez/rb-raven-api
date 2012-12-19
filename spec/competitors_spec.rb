require 'spec_helper'

describe Raven::Competitors do

  let(:domain) { 'test-domain.com' }

  describe 'for_domain' do

    use_vcr_cassette 'competitors/for_domain', :record => :none

    before do
      @res = Raven::Competitors.for_domain domain
    end

    it 'returns response results' do
      @res.should be_success
      @res.body.should_not be_nil
      @res.code.should eql 200
      @res.params.should be_nil
      @res.path.should eql '?method=competitors&domain=test-domain.com&key=test-key&format=json'
    end

    it 'returns all domains for account' do
      @res.parsed_body.should eql ['mobilemag.com']
    end

  end

end
