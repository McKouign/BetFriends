class Rssfeed

  def initialize
    @feed = feed
    @items = items
  end

  def rssfeed
    url = 'https://rmcsport.bfmtv.com/rss/football/'
    @feed = RSS::Parser.parse(URI.open(url))
  end


end
