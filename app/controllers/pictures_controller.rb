class PicturesController < ApplicationController

	def new
		@picture = current_user.books.first.pictures.new
	end	

	def create
		@picture = current_user.books.first.pictures.new(params[:picture])
		if @picture.save
			redirect_to pictures_path
		else 
			redirect_to root_path
		end	
	end	
	def index
		@picture = Picture.all
	end	

	def show
		@picture = Picture.find(params[:id])
	end	
	def destroy
	    @picture = Picture.find(params[:id])
	    @picture.destroy
	    	redirect_to pictures_path
	end
end
