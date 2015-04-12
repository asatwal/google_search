require 'google-search'
require 'launchy'

search_text = 'which university'

web = Google::Search::Web.new(query: search_text)

web.each do |result|

  if result.nil?
    puts "Search text #{search_text} returned no results"
  else
    puts "Search text #{search_text} First result #{result.uri} Launching ..."
    Launchy.open(result.uri)
  end

  break

end

