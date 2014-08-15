#!/usr/bin/ruby
# @Author: Gowri Gary Shankar
# @Date:   2014-07-28 22:08:21
# @Last Modified by:   Gowri Gary Shankar
# @Last Modified time: 2014-08-15 23:32:56


def full_title(page_title) 
	base_title = "Car Space, Car pooling redefined"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end

def sign_in(user, options={})
	if options[:no_capybara]
		# Sign in when not using no_capybara
		remember_token = User.new_remember_token
		cookies[:remember_token] = remember_token;
		user.update_attribute(:remember_token, User.digest(remember_token))
	else
		visit signin_path
		fill_in "Email", with: user.email 
		fill_in "Password", with: user.password 
		click_button "Sign in"
	end
end