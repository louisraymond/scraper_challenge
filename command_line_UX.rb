require './scraper.rb'

puts "Hello, Welcome to Hacker News Data Scraper- would you like to see data for the top 30 stories? (Y/N)"
resp = gets.chomp()
if resp.upcase == 'N'
  puts "goodbye"
elsif resp.upcase === 'Y' 
  scraper
end
