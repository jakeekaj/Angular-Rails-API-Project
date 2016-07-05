app.controller('MovieController', MovieController);

function MovieController(RestfulService) {
  var ctrl = this;

  ctrl.movie = RestfulService.getMovies().success(function(data){
      ctrl.movies = data;
    });

  ctrl.delete = function(movieId){
    RestfulService.deleteMovie(movieId).success(function(data){
        $location.path('movies');
      });
    };

};
