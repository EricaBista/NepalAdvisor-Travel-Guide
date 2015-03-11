// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks

//= require weather.js
//= require jquery.simpleWeather.js
//= require bootstrap.min.js




$(function() {
  // $('a#add-another').click(function() {
  //   $('#description-list li:first').clone().find('input').val('')
  //   .end().appendTo('#description-list');
  // });

  // $(document).on("click", '.delete-description', function() {
  //   if ($('#description-list li').length > 1)
  // 		$(this).parent().remove();
  //   else
  // 		alert('You need at least one description.')
  // });

   
 });

// function readURL(input) {
// alert(1);
//         if (input.files && input.files[0]) {
//             var reader = new FileReader();
            
//             reader.onload = function (e) {
//                 $('#blah').attr('src', e.target.result);
                 
//             }
            
//             reader.readAsDataURL(input.files[0]);
//         }
//     }

// function serializeArtworks(){
//   var categories = $.makeArray(
//     $("#categories .category").map(function(){
//       return $(this).data("id");
//     })
//   );
//   return {ids: artworkIds};
// };

// $("#index_table_categories tbody").sortable({
//   update: function(){
//     $.ajax({
//       url: "/admin/categories/sort",
//       type: 'post',
//       data: serializeArtworks(),
//       complete: function(){
//         $(".paginated_collection").effect("highlight");
//       }
//     });
//   }




 //});
//= require_tree .
//= require tinymce