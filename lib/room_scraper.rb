
class RoomScraper


  def initialize(index_url)
    @doc = Nokogiri::HTML(open(index_url))
    binding.pry
  end

  def call
    rows.each do |row_doc|
      #scrape_row(row_doc)
    end
  end

  private
  def rows
    #@doc.search("li p time") .attr("datetime")
    @rows ||= @doc.search("div.content li.result-row p.result-info")
  end

  def scrape_row(row)
   #scrape an individual rows

  {
    :date_created => row.search("time.result-date").text,
    :title => row.search("a.hdrlnk").text,
    :url => row.search("a.hdrlnk").attribute("href").text,
    :price => row.search("span.result-price").text
  }
  end

end
