require 'spec_helper'

describe Raven::Keyword do

  let(:domain)  { 'test-domain.com' }
  let(:keyword) { 'splash town' }

  describe 'add' do

    context 'successful' do

      use_vcr_cassette 'keyword/add/successful', :record => :none

      before do
        @res = Raven::Keyword.add domain, keyword
      end

      it 'returns response results' do
        @res.should be_success
        @res.body.should_not be_nil
        @res.code.should eql 200
        @res.params.should be_nil
        @res.path.should eql '?method=add_keyword&domain=test-domain.com&keyword=splash%20town&key=test-key&format=json'
      end

      it 'returns body with success message' do
        body_hash = @res.parsed_body
        body_hash.response.should eql 'success'
      end

    end

  end

  describe 'remove' do

    context 'successful' do

      use_vcr_cassette 'keyword/remove/successful', :record => :none

      before do
        @res = Raven::Keyword.remove domain, keyword
      end

      it 'returns response results' do
        @res.should be_success
        @res.body.should_not be_nil
        @res.code.should eql 200
        @res.params.should be_nil
        @res.path.should eql '?method=remove_keyword&domain=test-domain.com&keyword=splash%20town&key=test-key&format=json'
      end

      it 'returns body with success message' do
        body_hash = @res.parsed_body
        body_hash.response.should eql 'success'
      end

    end

  end

end
