require_relative '../../lib/user'
require_relative '../../lib/space'


def create_user
  user = User.create(
    name: 'Jack',
    email: 'jd@chitter.com',
    password: 'shhhh'
  )
  
end