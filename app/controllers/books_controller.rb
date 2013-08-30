  class BooksController < ApplicationController
 	before_filter :require_session, only: [:new, :destroy, :edit, :update]
 	before_filter :one_book, only: [:new, :create]
	def new
		@book = current_user.books.new

	end	

	def create
		@book = current_user.books.new(params[:book])
		if @book.save
			redirect_to books_path, notice: "Book created successfully!"
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
		@book = current_user.books.find(params[:id])
		if @book
			@book.destroy
			redirect_to books_path
		else	
			redirect_to books_path, alert: "This is not your book"
		end	
	end	

	def one_book
		book = current_user.books.first
		if book
			redirect_to book, alert: "You can only have one book"
			false	
		end	
	end	

end
