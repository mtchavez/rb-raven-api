module Raven

  class Engines

    ##
    # Supported engines for Raven.
    #
    # @return [Array] Supported engines.
    # @note Currently getting redirected to login for this endpoint
    #

    def self.all
      Raven.http.get '', { method: 'engines' }
    end

  end

end
