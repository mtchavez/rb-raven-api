module Raven

  class Keyword

    ##
    # This request will add keyword to the domain provided.
    #
    # @param domain  [String] *Required* - The domain you want the keyword to be added to.
    # @param keyword [String] *Required* - The keyword you are adding.
    #

    def self.add domain, keyword, cstm = {}
      Raven.http.get '', { method: 'add_keyword', domain: domain, keyword: keyword }.merge(cstm)
    end

    ##
    # This request will remove a keyword from the domain provided.
    #
    # @param domain  [String] *Required* - The domain you want the keyword to be removed from.
    # @param keyword [String] *Required* - The keyword you are removing.
    #

    def self.remove domain, keyword, cstm = {}
      Raven.http.get '', { method: 'remove_keyword', domain: domain, keyword: keyword }.merge(cstm)
    end

  end

end
