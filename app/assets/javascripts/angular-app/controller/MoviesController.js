app.controller('MoviesController', MoviesController);

function MoviesController(RestfulService) {
  var ctrl = this;

  ctrl.activeButton1 = function(){
    ctrl.active1 = true;
    ctrl.active2 = false;
  };

  ctrl.activeButton2 = function(){
    ctrl.active2 = true;
    ctrl.active1 = false;
  };

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
