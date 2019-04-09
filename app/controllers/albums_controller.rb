class AlbumsController < ApplicationController
  def index
    render json: AlbumType.all
  end

  def show
    render json: Album.find_by(slug: params[:slug]), include: [
      :id, :album_type_id, :title, :slug, :release_date,
      :image_url, :music_url
    ]
  end

  def create
    if(Album.find_by(slug: params[:slug]))
      render json: {
        error: true,
        message: "Another album with this title already exists.",
        resource: nil
      }, status: :conflict
    else
      render json: {
        error: false,
        message: "Successfully created new album.",
        resource: JSON.parse(Album.create(album_params).to_json(include: :songs))
      }
    end
  end

  def update
    @album = Album.find_by(slug: params[:slug])
    if(@album && @album.id != params[:id].to_i)
      render json: {
        error: true,
        message: "Another album with this title already exists",
        resource: nil
      }, status: :conflict
    else
      Album.find(params[:id]).update(album_params)
      render json: {
        error: false,
        message: "Successully saved album.",
        resource: JSON.parse(Album.find(params[:id]).to_json(include: :songs))
      }
    end
  end

  def destroy
    render json: {
      error: false,
      message: "Successully deleted album.",
      resource: Album.find(params[:id]).destroy
    }
  end

  def album_params
    params.require(:album).permit(:title, :slug, :album_type_id,
      :image_url, :release_date, :music_url)
  end

end
