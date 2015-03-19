//= require active_admin/base
//= require tinymce/tinymce.min

$( document ).ready(function() {
  tinymce.init({
    selector: "textarea",
    theme: "modern",
     elements: "id_description",
    editor_selector: "tinymce_editor"
 });
})


$(document).on('nested:fieldAdded', function(event){
  event.field.find('textarea').tinymce({
    theme: 'modern'
  });
});

