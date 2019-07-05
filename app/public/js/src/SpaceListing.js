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
      $('#space_listing').append("<h5>" + spaces[i]["name"] + "</h5>\
      <b>Description: </b>" + spaces[i]["description"] + "<br><b> Price:</b >  £" + spaces[i]["price"] + " \
      <br><a href=\"space/"+ spaces[i]["id"] + "\"><button type=\"button\" class=\"btn btn-danger btn-sm\">Details</button></a><br><br>");
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

