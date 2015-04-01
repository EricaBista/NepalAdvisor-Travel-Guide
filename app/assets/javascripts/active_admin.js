//= require active_admin/base
//= require active_admin_sortable
//= require tinymce/tinymce.min

$( document ).ready(function() {
  tinymce.init({
    selector: "textarea",
    theme: "modern",
     elements: "id_description",
    editor_selector: "tinymce_editor"
 });
})

  $(document).click('a.button.has_many_add', function(e){
		   tinymce.init({
		    selector: "textarea",
		    theme: "modern",
		     elements: "id_description",
		    editor_selector: "tinymce_editor"
		 });
  });

