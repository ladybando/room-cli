require_relative './config/environment'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

task :scrape_rooms do
  #instantiate scraper and have it find new rooms
  nyc_scraper = RoomScraper.new("https://newyork.craigslist.org/search/roo").update_rooms
  nyc_scraper.call
  arizona_scraper = RoomScraper.new("https://phoenix.craigslist.org/search/roo").update_rooms
  arizona_scraper.call
end
