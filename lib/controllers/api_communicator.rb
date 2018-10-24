require 'dotenv/load'

class ApiCommunicator

  api_key = ENV['API_KEY']
  def search_for_movie(movie)

    url = "https://api.themoviedb.org/3/search/movie?api_key=#{api_key}&language=en-US&query=#{movie}&page=1&include_adult=false"
    #make the web request
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
    binding.pry
  end

end


# file='GettysburgAddress.txt'
# f = File.open(file, "r")
# f.each_line { |line|
#   puts line
# }
# f.close
