#= require active_admin/base
#= require tinymce/tinymce.min

$(document).ready ->
  tinyMCE.init
    mode: "textareas"
    theme: "modern"
    elements: "category_Description"
    editor_selector: "tinymce_editor"
return



    	
$(document).on('nested:fieldAdded:.tinymce_editor') ->
    alert("a")

