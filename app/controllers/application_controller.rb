class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_rss_feed

  private

  def set_rss_feed
    @rss_feed = RssFeedService.new
    @rss_flux = @rss_feed.rss_feed("https://rmcsport.bfmtv.com/rss/football/")
  end
end
