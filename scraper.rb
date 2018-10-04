require 'nokogiri'
require 'httparty'
require 'byebug'

require './get_data_functions'
require './data'

url = "https://news.ycombinator.com/news"




def scraper_function

  r = 0
 TITLES.map do |title|
    post = {
      'title': title.text,
      'uri': get_uri(r) ,
      'author': get_author(r) ,
      'points': get_points(r) ,
      'comments': get_comments(r) ,
      'rank' => r,
    }

    r += 1

  puts post

  end

end
scraper_function
