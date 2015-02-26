#= require active_admin/base
#= require tinymce/tinymce.min
$(document).ready ->
  tinyMCE.init
    mode: "textareas"
    theme: "modern"
    editor_selector: "tinymce_editor"
    width: "200px"
  return
