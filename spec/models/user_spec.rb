require "rails_helper"

RSpec.describe User, type: :model do
	it 'is valid required' do 
		user = User.new(email: 'jojo@gmail.com', name: 'mojo jojo', username: 'mojojojo', bio:'crazy evil monkey', location: 'townsville') 
		expect(user).to be_valid
	end
end
