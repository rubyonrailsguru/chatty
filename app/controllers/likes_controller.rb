class LikesController < ApplicationController
  
  def index
   @user = current_user
   @books = Book.all
  end

  def create
    book = Book.find(params[:book_id])
    Like.create(:book => book, :user => current_user)
    respond_to do|format|
    	format.js
    end
  end

  
  def destroy
    like = Like.find(params[:id])
    like.destroy
    redirect_to likes_path, :notice => "You destroyed a like"
  end
end
