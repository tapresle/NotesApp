notesApp.directive('notes', function () {
  return {
    restrict: 'E', //E = element, A = attribute, C = class, M = comment         
    templateUrl: 'notes.html',
    controller: 'notesCtrl', //Embed a custom controller in the directive
    controllerAs: 'notes'
  }
});