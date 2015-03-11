#= require active_admin/base
#= require tinymce/tinymce.min
#= require tinymce/plugins/<plugin>/theme.js
$(document).ready ->
  tinyMCE.init
    mode: "textareas"
    
    editor_selector: "tinymce_editor"
  	

return


$(document).on('nested:fieldAdded:.tinymce_editor') ->
    alert("a")





    	


