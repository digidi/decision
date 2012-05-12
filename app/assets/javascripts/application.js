// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery_nested_form

$(document).ready(function () {
  if ($('#criterion_answer_input').length) {
    if ($('#criterion_answer_a1').is(':checked')) {
      $('.criteria_level_fields').hide();
    }; 
    
    $('.criterion_answer').change(function() {
      if ($('#criterion_answer_a1').is(':checked')) {
        $('.criteria_level_fields').hide();
      } else {
        $('.criteria_level_fields').slideToggle("fast");
      };
    });
  };
});


