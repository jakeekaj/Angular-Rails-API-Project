app.controller('ReviewController', ReviewController);

function ReviewController(RestfulService, $stateParams, $location ) {
  var ctrl = this;

  ctrl.movie = RestfulService.getMovie($stateParams.id).success(function(data){
      ctrl.movie = data;
    });

  ctrl.submit = function(){
    var review = {
      body: ctrl.body
    };
    RestfulService.addReview(ctrl.movie.id, review).then(function(){
    $location.path('movies/'+ctrl.movie.id);
    });
  };
};
