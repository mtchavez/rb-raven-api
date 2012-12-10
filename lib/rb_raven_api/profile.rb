module Raven

  class Profile

    ##
    # This request will return the name and billable keyword usage for the current profile.
    #
    # @return [Hash] Hash of profile information.
    #

    def self.info
      Raven.http.get '', { method: 'profile_info' }
    end

  end

end
