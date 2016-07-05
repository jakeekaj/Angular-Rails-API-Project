app.service('RestfulService', RestfulService);

function RestfulService($http){

  this.getMovies = function(){
    return $http.get('http://localhost:3000/api/v1/movies');
  };

  this.addMovie = function(movie){
    return $http.post('http://localhost:3000/api/v1/movies',movie);
  };

  this.deleteMovie = function(movieId){
    return $http.delete('http://localhost:3000/api/v1/movies/'+ movieId);
  };

  this.getMovie = function(movieId){
    return $http.get('http://localhost:3000/api/v1/movies/'+ movieId);
  };




};
