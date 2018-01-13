class Search < ApplicationRecord

def self.pod_feed
    Feedjira::Feed.fetch_and_parse("http://mebfaber.libsyn.com/rss").entries
  end
end
