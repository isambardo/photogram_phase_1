class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
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

end
