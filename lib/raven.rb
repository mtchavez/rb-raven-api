require 'json'
require 'rest-client'
require 'net/http'
require 'hashie'

require File.dirname(__FILE__) + '/rb_raven_api/config'
require File.dirname(__FILE__) + '/rb_raven_api/domain'
require File.dirname(__FILE__) + '/rb_raven_api/engines'
require File.dirname(__FILE__) + '/rb_raven_api/http'
require File.dirname(__FILE__) + '/rb_raven_api/keyword'
require File.dirname(__FILE__) + '/rb_raven_api/profile'
require File.dirname(__FILE__) + '/rb_raven_api/request_error'
require File.dirname(__FILE__) + '/rb_raven_api/response'

module Raven

  extend self

  ##
  # @example Configure takes block to set API key to be used in API calls.
  #    Raven.configure do |config|
  #      config.api_key = 'my-key'
  #    end
  # @example Configure can also just take an api_key
  #    Raven.configure 'my-key'
  #

  def configure api_key = nil
    if block_given?
      yield config
    else
      config.api_key = api_key
    end
  end

  #
  # @return [Raven::Config]

  def config
    @config ||= Config.new
  end

  def http # @private
    Http.new(config)
  end

end
