require_relative '../../lib/user'
require_relative '../../lib/space'
require_relative 'create_user'


def create_space
  @user = User.create(
    name: 'Jack',
    email: 'jd@chitter.com',
    password: 'shhhh'
  )

  @user.spaces.create(
       id: 1,
       name: "Room",
       description: "Beautiful room",
       price: 100,
       available_from: "2019-09-02",
       available_to: "2019-09-10"
  )
end
