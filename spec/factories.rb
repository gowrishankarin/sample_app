#!/usr/bin/ruby
# @Author: Gowri Gary Shankar
# @Date:   2014-08-02 19:47:17
# @Last Modified by:   Gowri Gary Shankar
# @Last Modified time: 2014-08-02 19:53:27

FactoryGirl.define do 
	factory :user do 
		name	"Michael Hartl" 
		email 	"michael@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end