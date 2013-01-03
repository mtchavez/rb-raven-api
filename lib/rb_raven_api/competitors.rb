module Raven

  class Competitors

    ##
    # This request will return the available competitors for the domain provided.
    #
    # @param domain [String] *Required* The domain name you want results for. _Must match exactly_
    # @return [Raven::Response] Response object with request results.
    #

    def self.for_domain domain, cstm = {}
      Raven.http.get '', { method: 'competitors', domain: domain }.merge(cstm)
    end

  end

end
