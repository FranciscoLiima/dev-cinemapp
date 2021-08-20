require 'net/https'
require 'uri'
require 'json' 

class MoviesController < ApplicationController
   
    # Control the variables and manage the functions
    def index
        @movies = getMovies
        @favorite_movies = FavoriteMovie.all

        # When param true call function insertFavoriteMovie and add a new favorite movie
        if params[:Title] && params[:Year]
            insertFavoriteMovie
        end

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @movies}
            format.json { render json: @favorite_movies}
        end
    end
    
    # GET the movies from API using param searchmovies that came from view movies/index.html.erb
    def getMovies
        @url    = Rails.configuration.x.MOVIE.URL  
        @apikey = Rails.configuration.x.MOVIE.API_KEY
        
        uri = URI("#{@url}?apikey=#{@apikey}&s=#{params[:searchmovies]}")
        
        res = Net::HTTP.start(uri.host) do |http|
            req = Net::HTTP::Get.new(uri)
            http.request(req)
        end
  
        return res.body
    end

    # Insert a new favorite Movie on the list of favorites
    def insertFavoriteMovie 
        @favorite_movie = FavoriteMovie.new(title: params[:Title], date: params[:Year])
        @favorite_movie.save
    end
end