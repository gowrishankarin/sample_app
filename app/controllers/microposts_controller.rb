#!/usr/bin/ruby
# @Author: Gowri Gary Shankar
# @Date:   2014-08-13 20:20:50
# @Last Modified by:   Gowri Gary Shankar
# @Last Modified time: 2014-08-15 23:10:59

class MicropostsController < ApplicationController
	before_action :signed_in_user, only: [:create, :destroy]

	def index
	end

	def create
		@micropost = current_user.microposts.build(micropost_params)
		if @micropost.save
			flash[:success] = "Micropost created!"
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	def destroy
		@micropost.destroy
		redirect_to root_url
	end

	private
		def micropost_params
			params.require(:micropost).permit(:content)
		end

		def correct_user
			@micropost = current_user.microposts.find_by(id: params[:id])
			redirect_to root_url if @micropost.nil?
		end
end
