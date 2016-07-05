app.controller('MoviesController', MoviesController);
function MoviesController() {
  var ctrl = this;
  ctrl.movies = [
    {
      title: 'First Note',
      plot: 'This if my first note.'
    },
    {
      title: 'Second Note',
      plot: 'This if my second note.'
    }
  ];
}
