require 'spec_helper'

describe User do
	
	before { @user = User.new(name: "Example User", email: "user@example.com")}

	subject { @user }


	it "should respond_to 'name'" do
		expect(@user).to respond_to(:name)
	end

	it "should respond_to 'email'" do
		expect(@user).to respond_to(:email)
	end

end
