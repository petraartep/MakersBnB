'use strict';

$(document).ready(function() {

  $( "#date_from" ).datepicker();
  $( "#date_to" ).datepicker();

  let allSpaces;

 function getSpaces(){
    var url = '/api/space';
    $.get(url, function(data) {
      this.spaces = data.spaces;
      allSpaces = this.spaces;
      printSpaces(this.spaces);
    });
  };

  function printSpaces(spaces){
    $("#space_listing").empty();
    for (var i = 0; i < spaces.length; i++) {
      $('#space_listing').append("<h1>" + spaces[i]["name"] + "</h>\
      <p>" + spaces[i]["description"] + " £" + spaces[i]["price"] + "</p> \
      <a href=\"space/"+ spaces[i]["id"] + "\"><button type=\"button\">Details</button></a>");
   }
  }


  getSpaces();


  $( "#filter" ).click(function() {
    var dateFrom = $('#date_from').datepicker('getDate');
    var dateTo = $('#date_to').datepicker('getDate');
    let spaces = new Spaces();
    let filtered = spaces.filter_spaces(dateFrom, dateTo, allSpaces);
    $("#space_listing").empty();
    printSpaces(filtered);
  });





});

