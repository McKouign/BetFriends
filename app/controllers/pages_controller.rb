class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def show
  end

  def home
    url = 'https://rmcsport.bfmtv.com/rss/football/'
    @feed = RSS::Parser.parse(URI.open(url))
  end

end
