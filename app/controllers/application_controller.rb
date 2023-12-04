class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  
  # @squad = current_user.squad

  # def home
  #   url = 'https://rmcsport.bfmtv.com/rss/football/'
  #   @feed = RSS::Parser.parse(URI.open(url))
  # end

end
