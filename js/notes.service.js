notesApp.service('notesService', function () {
  return {
    add: add,
    delete: deleteNote,
    retrieve: retrieve
  }
  
  // Add new note and return array of notes.
  function add(newNote) {
    var notes = retrieve();
    notes.push(newNote);
    localStorage.setItem('notes', JSON.stringify(notes));
    return notes;
  }
  
  // Delete selected note and return array of notes.
  function deleteNote(index) {
    var notes = retrieve();
    notes.splice(index, 1);
    localStorage.setItem('notes', JSON.stringify(notes));
    return notes;
  }
  
  function retrieve() {
    var notes;
    if (localStorage.getItem('notes')) {
      notes = JSON.parse(localStorage.getItem('notes'));
    } else {
      notes = [];
    }
    return notes;
  }
  
});