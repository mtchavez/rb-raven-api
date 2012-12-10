module Raven

  ##
  #
  # Config class used internally.
  # Configure API calls using Raven.configure

  class Config

    DEFAULT_HOST = 'https://api.raventools.com/api'
    DEFAULT_PORT = 80 # @private

    attr_accessor :api_key
    attr_reader   :host, :port # @private

    ##
    #
    # @private

    def initialize
      @host = DEFAULT_HOST
      @port = DEFAULT_PORT
    end
    
  end

end
