require './data'

def get_uri(rank_minus_one)
  links = TITLES.map { |title| title['href'] }
  links[rank_minus_one]
end

def get_author(rank_minus_one)

  if SUBTEXT[rank_minus_one].text.include?(' by ')
    SUBTEXT[rank_minus_one].text.split('|')[0].split('by')[1].split(' ')[0]
  else
    'Author not named'
  end
end

def get_points(rank_minus_one)
  if SUBTEXT[rank_minus_one].text.include?(' points ')
    PARSED_PAGE.css('span.score').text.split(' ')[0].to_i
  else
    0
  end

end

def get_comments(rank_minus_one)
  comments = SUBTEXT.map  do |subtext|
      if subtext.text.split('|').length < 3
        0
      else
      subtext.text.split('|')[2].split('c')[0].to_i
      end
    end
 return comments[rank_minus_one]
end
