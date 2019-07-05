'use strict'

function Spaces(){};

  Spaces.prototype.addSpaces = function(spaces){
    this.spaces = spaces
  };


  Spaces.prototype.printSpaces = function(spaces){
    $("#space_listing").empty();
    for (var i = 0; i < spaces.length; i++) {
      $('#space_listing').append("<h5>" + spaces[i]["name"] + "</h5>\
      <b>Description: </b>" + spaces[i]["description"] + "<br><b> Price:</b >  £" + spaces[i]["price"] + " \
      <br><a href=\"space/"+ spaces[i]["id"] + "\"><button type=\"button\" class=\"btn btn-danger btn-sm\">Details</button></a><br><br>");
   }
  }


  Spaces.prototype.filter_spaces = function(date_from, date_to, spaces){
    var filtered = []
    var date_from = new Date(date_from);
    var date_to = new Date(date_to);
    spaces.forEach(function(space){
      if(new Date(space["available_from"]) <= date_from & new Date(space["available_to"]) >= date_to){
        filtered.push(space)
      }
    })
    return filtered
  }


