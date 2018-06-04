require "rails_helper"

RSpec.describe User, type: :model do
	it 'is valid required' do 
		user = User.new(email: 'jojo@gmail.com', name: 'mojo jojo', username: 'mojojojo', bio:'crazy evil monkey', location: 'townsville') 
		expect(user).to be_valid
	end

	it "is invalid without a username" do
		user = User.new(email: 'jojo@gmail.com', name: 'mojo jojo', username: nil, bio:'crazy evil monkey', location: 'townsville') 
	end

	it "is invalid without a email" do
		user = User.new(email: nil, name: 'mojo jojo', username: nil, bio:'crazy evil monkey', location: 'townsville') 
	end

	it "is invalid without a password" do
		user = User.new(email: nil, password: nil, name: 'mojo jojo', username: 'mojojo', bio:'crazy evil monkey', location: 'townsville') 
	end

end
