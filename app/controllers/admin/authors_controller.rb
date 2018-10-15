class Admin::AuthorsController < ApplicationController
  def index

  end

  def new
    @author = Author.new
  end

  def create
    Author.create(name:params[:author][:name]) #body:params[:post][:body])
    redirect_to admin_authors_path
  end

  def edit
    @author = Author.find params[:id]
  end

  def update
    @author = Author.find params[:id]
    @author.name = params[:author][:name]
    # @author.body = params[:author][:name]
    @author.save
    redirect_to admin_authors_path
  end

  def destroy
    Author.find(params[:id]).delete
    redirect_to admin_authors_path
  end

end
