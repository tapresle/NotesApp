notesApp.controller('notesCtrl', function ($scope, notesService) {
  var self = this;
  self.showErrorMessage = false;
  self.deleteShown = false;
  
  self.notes = notesService.retrieve();
  self.newNote = '';
  self.addNote = addNote;
  self.deleteNote = deleteNote;
  
  activate();
  
  function activate() {
    if(localStorage === 'undefined') {
      self.showErrorMessage = true;
      console.log('Sorry, you need to use a modern browser to view this website.')
    }
  }
  
  function addNote() {
    self.notes = notesService.add(self.newNote);
    self.newNote = '';
  }
  
  function deleteNote($index) {
    self.notes = notesService.delete($index);
  }
})