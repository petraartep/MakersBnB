'use strict';

describe('SpaceListing', function() {

  let data;
  let spaces;
  let allSpaces;

  beforeEach(function(){
    data = {"spaces":[{"id":1,"name":"AJ","description":"hope this works","price":12,"available_from":"2019-07-01","available_to":"2019-07-24","user_id":1},
    {"id":2,"name":"Petra","description":"House is lovely","price":999,"available_from":"2019-07-01","available_to":"2019-08-31","user_id":1},
    {"id":3,"name":"A castle","description":"it has a moat","price":999,"available_from":"2019-07-01","available_to":"2019-07-31","user_id":2},
    {"id":4,"name":"Apartment","description":"lots of exposed brick in east london","price":1000,"available_from":"2019-07-01","available_to":"2019-07-03","user_id":3},
    {"id":5,"name":"Maker","description":"apartment west london","price":100,"available_from":"2019-07-29","available_to":"2019-08-23","user_id":3}]}

    allSpaces = new Spaces();  
    spaces = data.spaces
  });


  it('filters by available dates', function(){
    let date_from = "2019-08-02"
    let date_to = "2019-08-20"
    expect(allSpaces.filter_spaces(date_from, date_to, spaces)).toEqual([{"id":2,"name":"Petra","description":"House is lovely","price":999,"available_from":"2019-07-01","available_to":"2019-08-31","user_id":1},
    {"id":5,"name":"Maker","description":"apartment west london","price":100,"available_from":"2019-07-29","available_to":"2019-08-23","user_id":3}])
  });


  



});