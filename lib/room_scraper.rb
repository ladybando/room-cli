
class RoomScraper


  def initialize(index_url)
    @doc = Nokogiri::HTML(open(index_url))
    binding.pry
  end

  def rows
    #@doc.search("li p time") .attr("datetime")
    @rows ||= @doc.search("div.content li.result-row p.result-info")
  end
end
