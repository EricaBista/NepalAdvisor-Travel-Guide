#= require active_admin/base
#= require tinymce/tinymce.min
$(document).ready ->
  tinyMCE.init
    mode: "textareas"
    editor_selector: "tinymce_editor"
  	