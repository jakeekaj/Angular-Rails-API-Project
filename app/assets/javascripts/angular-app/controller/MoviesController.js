app.controller('MoviesController', MoviesController);

function MoviesController(RestfulService) {
  var ctrl = this;
  ctrl.movies = RestfulService.getMovies().success(function(data){
      ctrl.movies = data;
    });

};
