require 'spec_helper'

describe User do
	let(:valid_attributes) {
		{
			first_name: "Ryan",
			last_name: "Vermooten",
			username: "iamavibe"
		}
	}
	context "validations" do
		let(:user) { User.new(valid_attributes) }
		it "requires a username" do
			expect(user).to validate_presence_of(:username)
		end
	end
end
