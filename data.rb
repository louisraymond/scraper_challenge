unparsed_page = HTTParty.get(url)
PARSED_PAGE = Nokogiri::HTML(unparsed_page)
SUBTEXT = PARSED_PAGE.css('td.subtext')
TITLES = PARSED_PAGE.css('a.storylink')
POSTS =[]
