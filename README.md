# README

Hello folks :)

My choice of Ruby On Rails is because i have never done a rails application since start. I did a basic html and a backend a bit more sofisticated. I use "rails generate scaffold FavoriteMovies title:string date:string" command to generate the classes MVC on rails to record the favorite movies and display that one on a list on view. I used  config/environment/development.rb to config API and if we would like to configure other thing in the future we can and if we also desire to configure other environment we can but i just used development.rb. The most useful view and controller is the movies, there are the search of the api, list of the movies and list of the favorite movies as well. I used favorite movies controller just to remove a movie from the list. The application is very intuitive of do the things, you type a movie, click on "Search Movies" or Enter, application will return all the movies. Click on "Add" if you would like to add a new favorite movie and if you wish remove a film on favorite movie list, you just click on "Remove".


Things you may want to cover:

* Intall:
- Node version: v14.17.5
- Ruby version: 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-darwin20]
- Rails version: 6.1.4.1

* On project folder run commands:
- bundle install
- rake db:migrate
- export RAILS_ENV=development

* Run project with command:
- rails s

* Open a webpage with follow address: 
- http://localhost:3000/

Thanks,
Francisco Lima :)