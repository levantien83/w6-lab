require "movies/version"
require 'mechanize'

module Movies
  class Search
    def films
      movies = []
      page
        .search(".//div[@class='block-base movie']")
        .search(".//img[@class='thumb']").each do |f|
          movies << f["alt"]
        end
      return movies
    end

    def agent
      Mechanize.new
    end

    def page
      agent.get("http://123phim.vn/phim")
    end

  end
end
