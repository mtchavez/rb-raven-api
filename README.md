Raven Tools API Gem [![Build Status](https://secure.travis-ci.org/mtchavez/rb-raven-api.png)](http://travis-ci.org/mtchavez/rb-raven-api?branch=master)
=============================

A wrapper around the RavenTools API calls.

* Github: http://github.com/mtchavez/rb-raven-api
* [![endorse](http://api.coderwall.com/mtchavez/endorsecount.png)](http://coderwall.com/mtchavez)

## Install

    gem install 'rb_raven_api'

## Configuration

Set configuration options to be used on requests:

    require 'rb_raven_api'

    Raven.configure do |config|
      config.api_key = 'my-key'
    end

Or set your key without a block before making some requests:

    require 'rb_raven_api'

    Raven.configure 'my-key'

## Profile

Get info pertaining to your RavenTools profile.

### Info

This request will return the name and billable keyword usage for the current profile.

    Raven::Profile.info

Example response in JSON

    {
      "name":"Tweetstalk",
      "keyword_usage":"33"
    }

##Domains

API specific calls for domains.

### All

This request will return the available domains for the profile associated with your API key.

    Raven::Domain.all
    # => ["example.com","tweetstalk.com"]

### Add

The domain name you want to add. "www." prefixes are ignored for purposes of matching ranks, but will be stored as part of the domain name for future requests.

    Raven::Domain.add 'poop-chute.com', '1,2,3'

Example response in JSON

    {
      "response":"success"
    }

### Keywords

This request will return the available keywords for the domain provided.

    Raven::Domain.keywords 'poop-chute.com'

Example response in JSON

    [
      "toilets",
      "plunger",
      "toilet paper"
    ]

### Keywords with Tags

This request will return the available keywords for the domain provided.

    Raven::Domain.keywords_with_tags 'poop-chute.com'

Example response in JSON

    [
      {
        "keyword":"toilets", 
        "tags":null
      },
      {
        "keyword":"plunger",
        "tags":["one", "two"]
      },
      {
        "keyword":"toilet paper",
        "tags":["three"]
      }
    ]

### Domain Info

This request will return the search engines for the domain provided.

    Raven::Domain.info 'poop-chute.com'



## Keywords

Keywords endpoint allows you to create and add keywords to a domain.

### Add

This request will add keyword to the domain provided.

    Raven::Keyword.add 'twitter.com', 'microblog'

Example response in JSON

    {
      "response":"success"
    }

### Remove

This request will remove a keyword from the domain provided.

    Raven::Keyword.remove 'twitter.com', 'microblog'

Example response in JSON

    {
      "response":"success"
    }

## License

Written by Chavez

Released under the MIT License: http://www.opensource.org/licenses/mit-license.php
