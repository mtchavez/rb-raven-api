require 'spec_helper'

describe Raven::Profile do

  describe 'info' do

    context 'for your account' do

      use_vcr_cassette 'profile/info', :record => :none

      before do
        @res = Raven::Profile.info
      end

      it 'returns response results' do
        @res.should be_success
      end

      it 'returns profile name' do
        profile = @res.parsed_body
        profile.name.should eql 'TwoGun'
      end

      it 'returns keyword usage' do
        profile = @res.parsed_body
        profile.keyword_usage.should eql '134'
      end

    end

  end

end
