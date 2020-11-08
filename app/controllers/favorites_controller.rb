class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(property_id: params[:property_id])
    favorite.save
    redirect to property_path(favorite.property_id)
  end

  def destroy
    favorite = Favorite.find_by(property_id: params[:property_id], user_id: current_user.id)
    favorite.destroy
    redirect to property_path(favorite.property_id)
  end
end
