app.service('RestfulService', RestfulService);

function RestfulService($http){

  this.getMovies = function(){
    return $http.get('http://localhost:3000/api/v1/movies');
  };


};
