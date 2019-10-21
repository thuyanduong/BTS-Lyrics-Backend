class AlbumTypesController < ApplicationController
  def index
    render json: AlbumTypeSerializer.new(AlbumType.all).to_simple_json
  end
end
