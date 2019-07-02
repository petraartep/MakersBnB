

feature User do
  feature 'create' do
    scenario 'creates a new instance of user' do
      user = User.create(name: "Joe", email: "example@hotmail.com", password: "password")
      expect(user.name).to eq("Joe")
      expect(user.email).to eq("example@hotmail.com")
      expect(user.password).to eq("password")
    end
  end
end
