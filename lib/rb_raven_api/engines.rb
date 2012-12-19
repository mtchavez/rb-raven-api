module Raven

  class Engines

    ##
    # Supported engines for Raven.
    #
    # @return [Raven::Response] Response object with request results.
    #

    def self.all
      Raven.http.get '', { method: 'engines' }
    end

  end

end
