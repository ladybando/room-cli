
class RoomScraper

 #@doc.search("li p time") .attr("datetime")
  def initialize(index_url)
    @doc = Nokogiri::HTML(open(index_url))
    binding.pry
  end
end
