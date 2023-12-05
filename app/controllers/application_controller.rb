class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_squad

  def set_squad
    @squad = current_user.squad
  end

  private

  def set_rss_feed
    @rss_feed = RssFeedService.new
    @rss_flux = @rss_feed.rss_feed("https://rmcsport.bfmtv.com/rss/football/")
  end
end
