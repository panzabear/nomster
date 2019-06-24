class PhotosController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def destroy
    @place = Place.find(params[:place_id])
    if @place.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
    redirect_to place_path
  end

private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end
end
