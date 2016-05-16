class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorite_movies = current_user.find_up_voted_items
  end
end
