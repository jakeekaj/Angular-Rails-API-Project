app.controller('NewMovieController', NewMovieController);

function NewMovieController($http, $location, RestfulService) {
   var ctrl = this;

   ctrl.submit = function(){
     var movie = {
       title: ctrl.title,
       plot: ctrl.plot,
       reviews: []
     };
     RestfulService.addMovie(movie).then(function(data){
       $location.path('movies');
     });

   };

};
