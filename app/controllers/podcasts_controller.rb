class PodcastsController < ApplicationController
  def search
    @podcasts = Search.pod_feed


    # Avoid requesting info from API if there was no search query
    term = params[:term]
    return unless term.present?


      @results = ITunesSearchAPI.search(term: "#{term}", country: "US", media: "podcast")
  end
end
