class RssFeedService

  def rss_feed(url)
    url = 'https://rmcsport.bfmtv.com/rss/football/'
    @feed = RSS::Parser.parse(URI.open(url))
  end


end
