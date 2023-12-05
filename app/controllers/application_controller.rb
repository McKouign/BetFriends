class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_squad

  def set_squad
    @squad = current_user.squad
  end

  # def home
  #   url = 'https://rmcsport.bfmtv.com/rss/football/'
  #   @feed = RSS::Parser.parse(URI.open(url))
  # end

end
