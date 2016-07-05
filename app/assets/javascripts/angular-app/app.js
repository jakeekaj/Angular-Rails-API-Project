var app = angular.module('myApp', ['ui.router', 'ngResource', 'templates']);


app.config(function($stateProvider, $urlRouterProvider) {
   $stateProvider
     .state('home', {
       url: '/',
       templateUrl: 'home.html',
       controller: 'HomeController as ctrl'
     })
     .state('home.new', {
       url: 'new',
       templateUrl: 'home/new.html',
       controller: 'NewMovieController as ctrl'
     })
     .state('home.movies', {
       url: 'movies',
       templateUrl: 'home/movies.html',
       controller: 'MoviesController as ctrl'
     })
     .state('home.movie', {
       url: 'movies/:id',
       templateUrl: 'home/movie.html',
       controller: 'MovieController as ctrl'
     });
  $urlRouterProvider.otherwise('/');
});
