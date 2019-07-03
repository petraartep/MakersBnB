'use strict';

$(document).ready(function() {

  var spaces;

  function getSpaces(){
    var url = '/api/space';
    $.get(url, function(data) {
      spaces = data.spaces;
      for (var i = 0; i < spaces.length; i++) {

         $('#space_listing').append("<h1>" + spaces[i]["name"] + "</h>\
         <p>" + spaces[i]["description"] + " £" + spaces[i]["price"] + "</p> \
         <a href=\"space/"+ spaces[i]["id"] + "\"><button type=\"button\">Details</button></a>");


      }
    });
  };

  getSpaces();

});

