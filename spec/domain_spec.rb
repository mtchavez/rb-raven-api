require 'spec_helper'

describe Raven::Domain do

  let(:domain) { 'test-domain.com' }

  describe 'all' do

    use_vcr_cassette 'domain/all', :record => :none

    before do
      @res = Raven::Domain.all
    end

    it 'returns response results' do
      @res.should be_success
      @res.body.should_not be_nil
      @res.code.should eql 200
      @res.params.should be_nil
      @res.path.should eql '?method=domains&key=test-key&format=json'
    end

    it 'returns all domains for account' do
      @res.parsed_body.should eql [domain]
    end

  end

  describe 'add' do

    use_vcr_cassette 'domain/add', :record => :none

    before do
      @res = Raven::Domain.add domain
    end

    it 'returns response results' do
      @res.should be_success
      @res.body.should_not be_nil
      @res.code.should eql 200
      @res.params.should be_nil
      @res.path.should eql '?method=add_domain&domain=test-domain.com&engine_id=1%2C2%2C3&key=test-key&format=json'
    end

    it 'returns successful response' do
      @res.parsed_body.response.should eql 'success'
    end

  end

  describe 'keywords' do

    use_vcr_cassette 'domain/keywords', :record => :none

    before do
      @res = Raven::Domain.keywords domain
    end

    it 'returns response results' do
      @res.should be_success
      @res.body.should_not be_nil
      @res.code.should eql 200
      @res.params.should be_nil
      @res.path.should eql '?method=keywords&domain=test-domain.com&key=test-key&format=json'
    end

    it 'returns all keywords for domain' do
      @res.parsed_body.should eql ['scratch', 'smash', 'splash']
    end

  end

  describe 'keywords with tags' do

    use_vcr_cassette 'domain/keywords_with_tags', :record => :none

    before do
      @res = Raven::Domain.keywords_with_tags domain
    end

    it 'returns response results' do
      @res.should be_success
      @res.body.should_not be_nil
      @res.code.should eql 200
      @res.params.should be_nil
      @res.path.should eql '?method=keywords_tags&domain=test-domain.com&key=test-key&format=json'
    end

    it 'returns hash of keywords with tags for domain' do
      @res.parsed_body.should eql [ { 'keyword' => 'scratch', 'tags' => ['my tag'] }, { 'keyword' => 'smash', 'tags' => nil }, { 'keyword' => 'splash', 'tags' => nil } ]
    end

  end

end
