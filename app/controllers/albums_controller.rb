class AlbumsController < ApplicationController
  def index
    render json: AlbumSerializer.new(Album.all).to_simple_json
  end

  def show
    render json: AlbumSerializer.new(Album.find(params[:id])).to_complete_json
  end

  def show_by_title
    render json: AlbumSerializer.new(Album.find_by(slug: params[:slug])).to_complete_json
  end

  def create
    album = Album.find_by(slug: params[:slug])
    if(album)
      render json: {
        error: true,
        message: "Another album with this title already exists.",
        resource: nil
      }, status: :conflict
    else
      album = Album.create(album_params)
      render json: {
        error: false,
        message: "Successfully created new album.",
        resource: JSON.parse(AlbumSerializer.new(album).to_complete_json)
      }
    end
  end

  def update
    album = Album.find(params[:id])
    dupe_album = Album.find_by(slug: params[:slug])
    if(dupe_album && dupe_album.id != params[:id].to_i)
      render json: {
        error: true,
        message: "Another album with this title already exists.",
        resource: nil
      }, status: :conflict
    else
      album.update(album_params)
      render json: {
        error: false,
        message: "Successully saved album.",
        resource: JSON.parse(AlbumSerializer.new(Album.find(params[:id])).to_complete_json)
      }
    end
  end

  def destroy
    album = Album.find(params[:id])
    render json: {
      error: false,
      message: "Successully deleted album.",
      resource: JSON.parse(AlbumSerializer.new(album.destroy).to_simple_json)
    }
  end

  private
  def album_params
    params.require(:album).permit(
      :title,
      :slug,
      :album_type_id,
      :image_url,
      :release_date,
      :music_url)
  end

end
