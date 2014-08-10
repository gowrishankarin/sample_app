#!/usr/bin/ruby
# @Author: Gowri Gary Shankar
# @Date:   2014-08-02 19:47:17
# @Last Modified by:   Gowri Gary Shankar
# @Last Modified time: 2014-08-10 19:01:32

FactoryGirl.define do 
	factory :user do 
		sequence(:name) { |n| "Person #{n}" }
		sequence(:email) { |n| "person_#{n}@example.com"}
		password "foobar"
		password_confirmation "foobar"
	

		factory :admin do
			admin true
		end
	end
end