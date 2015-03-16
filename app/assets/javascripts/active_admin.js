//= require active_admin/base
//= require tinymce/tinymce.min

$( document ).ready(function() {
  tinymce.init({
    selector: "textarea",
    theme: "modern",
    elements: "id_description",
    editor_selector: "tinymce"
 });
})

$('.has_many_add').on('click',function(event){
  alert("a")
    // var field = event.field;
    // var textarea = field.find("textarea");
    // convert_textarea_to_editor(textarea);
});
var textarea = $(".bulk .fields textarea");

/*I added this additional check because even if textarea length was zero, tinyMCE init method was converting normal textarea (inspite of using 'mode:specific_textareas') to editor*/
if(textarea.length > 0){
  convert_textarea_to_editor(textarea); /*This might be an additional bug that its converting non-targeted textareas to editor*/
}

function convert_textarea_to_editor(textarea){
  textarea.addClass(textarea.attr("id")+"-tinymce");
  tinyMCE.init({
    "theme_advanced_toolbar_align":"left",
    "theme":"advanced",
    "mode":"specific_textareas",
    "editor_selector":textarea.attr("class"),
    "theme_advanced_toolbar_location":"top",
    "theme_advanced_buttons1" : "bold, italic, underline, separator, bullist, numlist, separator, outdent, indent, separator, undo, redo, separator, hr, separator, forecolor, backcolor"
  });
}
