#= require active_admin/base
#= require tinymce/tinymce.min

$(document).ready ->
  tinyMCE.init
    mode: "textareas"
    
    editor_selector: "tinymce_editor"
  	

return


$(document).on('nested:fieldAdded:.tinymce_editor') ->
    alert("a")





    	


