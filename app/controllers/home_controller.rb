class HomeController < ApplicationController
  def index
    @images = Image.all.order(created_at: :desc).limit(12)
  end

  # def image_params
  #   params.require(:image).permit(:name, :attachment, :url, :album_id)
  # end
end
