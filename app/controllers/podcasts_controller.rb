class PodcastsController < ApplicationController
  def search
    @share = Share.new
    # Avoid requesting info from API if there was no search query
    term = params[:term]
    return unless term.present?

    @results = ITunesSearchAPI.search(term: "#{term}", country: "US", media: "podcast")
      respond_to do |format|
      format.js
      format.html
    end
  end

  def reload
    @share = Share.new
    # Avoid requesting info from API if there was no search query
    term = params[:term]
    return unless term.present?

    @results = ITunesSearchAPI.search(term: "#{term}", country: "US", media: "podcast")

  end
end
