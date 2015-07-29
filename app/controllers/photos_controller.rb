class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form
  end

  def show
    @list_of_photos = Photo.all
    @selected_photo = params["id"]
    @list_of_photos.each do |selector|
      if @selected_photo.to_i == selector.id
         @display_me = selector.source
         @use_this_caption = selector.caption
      end
    end
  end

  def destroy
    @list_of_photos = Photo.all
    @selected_photo = params["id"]
    @list_of_photos.each do |destroyer|
      if @selected_photo.to_i == destroyer.id
         Photo.destroy(destroyer)
      end
    end
    redirect_to :back
  end
end
