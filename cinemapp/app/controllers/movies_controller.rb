require 'net/https'
require 'uri'
require 'json' 
require 'sqlite3'

class MoviesController < ApplicationController
   
    def index
        @movies = getMovies
        @favoritemovies = Favoritemovie.all
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @movies}
            format.json { render json: @favoritemovies}
        end
    end
    
    def getMovies
        @url = "https://www.omdbapi.com/"
        @apikey = "925eba28"
        
        uri = URI("#{@url}?apikey=#{@apikey}&s=#{params[:searchmovies]}")
        
        res = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
            req = Net::HTTP::Get.new(uri)
            http.request(req)
        end
  
        return res.body
    end

    def insertFavoriteMovie(title, date) 

    end
end