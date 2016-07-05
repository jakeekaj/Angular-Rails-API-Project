app.controller('MoviesController', MoviesController);

function MoviesController(RestfulService) {
  var ctrl = this;
  ctrl.movies = RestfulService.getMovies().success(function(data){
      ctrl.movies = data;
    });

  ctrl.delete = function(movieId){
    RestfulService.deleteMovie(movieId);
    RestfulService.getMovies().success(function(data){
        ctrl.movies = data;
      });
  };

};
