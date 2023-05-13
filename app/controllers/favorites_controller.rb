class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render :index
  end

  def create
    @favorite = Favorite.create(
      user_id: current_user.id,
      quantity: params[:quantity],
      favorited_item: params[:favorited_item],
    )
    render :show
  end

  def show
    @favorite = Favorite.find_by(id: params[:id])
    render :show
  end

  def update
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.update(
      user_id: params[:user_id] || @favorite.user_id,
      quantity: params[:quantity] || @favorite.quantity,
      favorited_item: params[:favorited_item] || @favorite.favorited_item,
    )
    render :show
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    render json: { message: "Favorite destroyed successfully" }
  end
end
