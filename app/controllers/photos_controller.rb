class PhotosController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @place.photo.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end
end

private

def photo_params
  params.require(:photo).permit(:image_url, :caption)
end
