class PicturesController < ApplicationController
 	before_filter :require_session, only: [:new, :destroy, :edit, :update]
	def new
		@picture = current_user.books.first.pictures.new
	end	

	def create
		@picture = current_user.books.first.pictures.new(params[:picture])
		if @picture.save
			redirect_to @picture.book
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
	    @picture = current_user.books.first.pictures.find(params[:id])
	    if @picture
	    	@picture.destroy
	    	redirect_to pictures_path
	    else
	    	redirect_to pictures_path
	    end	
	end
end
