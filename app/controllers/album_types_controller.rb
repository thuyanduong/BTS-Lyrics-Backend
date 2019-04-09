class AlbumTypesController < ApplicationController
  def index
    render json: AlbumType.all, include: [:id, :category]
  end
end
