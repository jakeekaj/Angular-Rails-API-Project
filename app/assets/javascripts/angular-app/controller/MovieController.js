app.controller('MovieController', MovieController);

function MovieController(RestfulService, $stateParams, $location ) {
  var ctrl = this;

  ctrl.movie = RestfulService.getMovie($stateParams.id).success(function(data){
      ctrl.movie = data;
    });

  ctrl.delete = function(movieId){
    RestfulService.deleteMovie(movieId).success(function(data){
        $location.path('movies');
      });
    };


};
