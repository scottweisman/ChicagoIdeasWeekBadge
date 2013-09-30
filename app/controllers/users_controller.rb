class UsersController < ApplicationController

	before_filter :authenticate, :only => :export_data

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			respond_to do |format|
				format.js
				format.html { redirect_to @user }
			end
		else
			respond_to do |format|
				format.js
				format.html { render action: "new" }
				format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def export_data
  	render :csv => User.all
  end

protected

	def authenticate
	  authenticate_or_request_with_http_basic do |username, password|
	    username == "launchpad" && password == "launchideas12"
	  end
	end

end
