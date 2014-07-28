#!/usr/bin/ruby
# @Author: Gowri Gary Shankar
# @Date:   2014-07-28 22:08:21
# @Last Modified by:   Gowri Gary Shankar
# @Last Modified time: 2014-07-28 22:09:46


def full_title(page_title) 
	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end