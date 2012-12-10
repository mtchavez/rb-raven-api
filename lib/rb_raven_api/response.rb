module Raven

  class Response

    attr_reader :success, :body, :errors, :code, :path, :params

    ##
    # Initializing response object to be returned from API calls, used internally.
    #

    def initialize(http, _code, _path, _params) # @private
      @success, @body, @errors = http.success, http.response, http.errors
      @code, @path, @params    = _code, _path, _params
    end
    
    ##
    #
    # Convenience method to determine if request was successfull or not
    # @return [Boolean]

    def success?
      !!@success
    end

    ##
    #
    # Parses JSON body of request and returns a Hashie::Mash
    # @return [Hashie::Mash]

    def parsed_body
      hash = JSON.parse(@body) rescue {}
      return hash if hash.is_a?(Array)
      Hashie::Mash.new hash
    end

  end

end
