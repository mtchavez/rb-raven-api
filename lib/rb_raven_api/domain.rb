module Raven

  class Domain

    ##
    # Your account domains.
    #
    # @return [Array] Domains.
    #

    def self.all
      Raven.http.get '', { method: 'domains' }
    end

    ##
    # This request will add the domain provided.
    #
    # @param domain    [String] *Required* The domain name you want to add. "www." prefixes are ignored for purposes of matching ranks, but will be stored as part of the domain name for future requests.
    # @param engine_id [String] _Optional_ Comma separate list of search engine ids that you want to track for this domain. Defaults to '1,2,3' which is Google, Yahoo! and Bing
    #

    def self.add domain, engine_id = '1,2,3'
      Raven.http.get '', { method: 'add_domain', domain: domain, engine_id: engine_id }
    end

    ##
    # This request will return the available keywords for the domain provided.
    #
    # @param domain [String] *Required* The domain name you want results for. _Must match exactly_
    #

    def self.keywords domain
      Raven.http.get '', { method: 'keywords', domain: domain }
    end

    ##
    # This request will return the available keywords for the domain provided.
    #
    # @param domain [String] *Required* The domain name you want results for. _Must match exactly_
    #

    def self.keywords_with_tags domain
      Raven.http.get '', { method: 'keywords_tags', domain: domain }
    end

    ##
    # This request will return the search engines for the domain provided.
    #
    # @param domain [String] *Required* The domain name you want info for. _Must match exactly_
    #

    def self.info domain
      Raven.http.get '', { method: 'domain_info', domain: domain }
    end

  end

end
