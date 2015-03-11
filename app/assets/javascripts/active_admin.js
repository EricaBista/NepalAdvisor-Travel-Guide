
//= require active_admin/base
//= require tinymce/tinymce.min
$( document ).ready(function() {
  tinymce.init({
    selector: "textarea",
    elements: "id_description",
    editor_selector: "tinymce_editor"
 });
});

