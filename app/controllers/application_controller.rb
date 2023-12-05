class ApplicationController < ActionController::Base
  before_action :authenticate_user!


  def index
    rss_feed_service = RssFeedService.new
    rss_feed = rss_feed_service.rss_feed("https://rmcsport.bfmtv.com/rss/football/")
  end

end
