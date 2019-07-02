require_relative '../../lib/user'
require_relative '../../lib/space'


def create_spaces
  user1 = User.create(
    name: 'Jack',
    email: 'jd@chitter.com',
    password: 'shhhh'
  )

  user2 = User.create(
    name: 'Jill',
    email: 'jilld@chitter.com',
    password: 'shhhh'
  )

  user3 = User.create(
    name: 'Jim',
    email: 'jim@chitter.com',
    password: 'shhhh'
  )

  user1.spaces.create(name: 'Jacks place',
    description: 'super smooth big fridge',
    price: 1000,
    available_from: '2019-07-01',
    available_to: '2019-12-01')

  user1.spaces.create(name: 'Jacks second place',
    description: 'great pool',
    price: 10000,
    available_from: '2019-06-01',
    available_to: '2019-11-01')

  user2.spaces.create(name: 'Jill cosy place',
    description: 'comfy bed and fireplace',
    price: 500,
    available_from: '2018-11-01',
    available_to: '2019-02-01')

  user3.spaces.create(name: 'Jim hunting place',
    description: 'guns and dogs and bullets',
    price: 50,
    available_from: '2019-05-01',
    available_to: '2019-09-01')
end