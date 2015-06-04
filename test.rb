require 'goodreads'
require 'pry'

client = Goodreads::Client.new(:api_key => 'cw3ZGg2NW1uDJmDfUzSBCA', :api_secret => 'ESPPH9y1O3ctb2kY9f3VTPMEakeKIy1Qw588CPCp6s')
search = client.search_books('The Lord Of The Rings')
search.results.work.each do |book|
  puts book.id        # => book id
  puts book.best_book.title     # => book title
end