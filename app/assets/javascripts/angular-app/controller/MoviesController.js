app.controller('MoviesController', MoviesController);

function MoviesController(RestfulService) {
  var ctrl = this;


  ctrl.sort_data_by = function(name){
      ctrl.sort_on = name;
      ctrl.reverse = !(ctrl.reverse);
    }

  ctrl.movies = [];
  ctrl.accessMovies = function(){RestfulService.getMovies().success(function(data){
      ctrl.movies = data;
    });
  };

  ctrl.delete = function(movieId){
    RestfulService.deleteMovie(movieId);
    RestfulService.getMovies().success(function(data){
        ctrl.movies = data;
      });
  };

  ctrl.accessMovies();

};
