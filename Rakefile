require_relative './config/environment'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

task :scrape_rooms do
  #instantiate scraper and have it find new rooms
  nyc_scraper = RoomScraper.new("https://newyork.craigslist.org/search/roo")
  nyc_scraper.call
  arizona_scraper = RoomScraper.new("https://phoenix.craigslist.org/search/roo")
  arizona_scraper.call
  #after this method call i should be able to say Room.all and have rooms there
end
