'use strict';

$(document).ready(function() {

  function getSpaces(){
    var url = '/api/space';
    $.get(url, function(data) {
      console.log(data)
    });
  };
});


function SpaceListing() {

  
};