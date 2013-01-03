module Raven

  class Engines

    ##
    # Supported engines for Raven.
    #
    # @return [Raven::Response] Response object with request results.
    #

    def self.all cstm = {}
      Raven.http.get '', { method: 'engines' }.merge(cstm)
    end

  end

end
