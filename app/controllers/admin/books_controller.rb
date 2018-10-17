class Admin::BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(title:params[:book][:title], body:params[:book][:body], authors:[Author.find(params[:book][:authors])])
    redirect_to admin_posts_path
  end

  def edit
    @book = find params[:id]
  end

  def update
    @book = book.find params[:id]
    @book.title = params[:book][:title]
    @book.authors = [Author.find(params[:book][:authors])]
    @book.body = params[:book][:body]
    # @book.tags = Tag.find(params[:book][:tag_ids])
    @book.save
    redirect_to admin_books_path
  end

  def destroy
    Book.find(params[:id]).delete
    redirect_to admin_books_path
  end
end
