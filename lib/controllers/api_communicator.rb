require 'dotenv/load'

class ApiCommunicator
  API_KEY = ENV['API_KEY']
  def search_for_movie(movie)

    url = "https://api.themoviedb.org/3/search/movie?api_key=#{API_KEY}&language=en-US&query=#{movie}&page=1&include_adult=false"
    #make the web request
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
  end

  def get_genres
    genre_query = "https://api.themoviedb.org/3/genre/movie/list?api_key=#{API_KEY}&language=en-US"
    response_string = RestClient.get(genre_query)
    response_hash = JSON.parse(response_string)
  end

end


# file='GettysburgAddress.txt'
# f = File.open(file, "r")
# f.each_line { |line|
#   puts line
# }
# f.close
