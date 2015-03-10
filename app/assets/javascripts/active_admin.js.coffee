#= require active_admin/base
#= require tinymce/tinymce.min
$(document).ready ->
  tinyMCE.init
    mode: "textareas"
    
    editor_selector: "tinymce_editor"
  	








/*$(document).on 'click', 'a.button.has_many_add', (e)->

    e.preventDefault()
    elem   = $(@)
    parent = elem.closest '.has_many_container'
    parent.trigger before_add = $.Event 'has_many_add:before'

    unless before_add.isDefaultPrevented()
      
      parent.trigger 'has_many_add:after', tinyMCE.init*/


    	


