class BooksController < ApplicationController
  # before_action :authenticate_user!

def index
  @books = Book.all
  # @current_page = params[:page] || 1
end

def show
  @book = Book.find params[:id]
end
end
