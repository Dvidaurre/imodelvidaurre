  class BooksController < ApplicationController
  	before_filter :current_user
	def new
		@book = current_user.books.new
	end	

	def create
		@book = current_user.books.new(params[:book])
		if @book.save
			redirect_to books_path
		else
			render :new
		end

	end	
	def index
		@books = Book.all
	end

	def show
		@book = Book.find(params[:id])
	end	

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path
	end	


end
