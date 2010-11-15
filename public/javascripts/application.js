// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// remote links handler

$(document).ready(function(){

  $('#upload_files').click(function() {
    $('#upload_photo').uploadifyUpload();
    return false
  });

});
