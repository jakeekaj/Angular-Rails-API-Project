app.controller('HomeController', HomeController);

function HomeController() {
  var ctrl = this;
  ctrl.hideMain = false;

  ctrl.hideIt = function(){
    this.hideMain = true;
  };

};
