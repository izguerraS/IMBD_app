class Api::MoviesController < ApplicationController
  def index
    response = HTTP.get "https://movie-database-imdb-alternative.p.rapidapi.com/?s=Avengers%20Endgame&page=1&r=json",
    headers:{
      "x-rapidapi-key" => "876e007d7amsh88b6e8dab106d6ep137b30jsn9d94a22cabe9",
      "x-rapidapi-host" => "movie-database-imdb-alternative.p.rapidapi.com"
    }
    @movies = response.parse
    render 'index.json.jb'
  end
end
