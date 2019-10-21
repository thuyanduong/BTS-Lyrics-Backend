class SongsController < ApplicationController
  def index
    render json: SongSerializer.new(Song.all).to_simple_json
  end

  def show
    render json: SongSerializer.new(Song.find(params[:id])).to_complete_json
  end

  def show_by_title
    render json: SongSerializer.new(Song.find_by({slug: params[:slug]})).to_complete_json
  end

  def create
    song = Song.find_by(slug: params[:slug])
    if(song)
      render json: {
        error: true,
        message: "Another song with this title already exists.",
        resource: nil
      }, status: :conflict
    else
      song = Song.create(song_params)
      render json: {
        error: false,
        message: "Successfully created new song.",
        resource: JSON.parse(SongSerializer.new(song).to_simple_json)
      }
    end
  end

  def update
    song = Song.find(params[:id])
    dupe_song = Song.find_by({slug: params[:slug]})
    if(dupe_song && dupe_song.id != params[:id].to_i)
      render json: {
        error: true,
        message: "Another song with this title already exists.",
        resource: nil
      }, status: :conflict
    else
      song.update(song_params)
      render json: {
        error: false,
        message: "Successfully saved song.",
        resource: JSON.parse(SongSerializer.new(song).to_simple_json_with_album_ids)
      }
    end
  end

  def destroy
    song = Song.find(params[:id]).destroy
    Track.where(song_id: params[:id]).destroy_all
    render json: {
      error: false,
      message: "Successfully deleted song.",
      resource: JSON.parse(SongSerializer.new(song).to_simple_json_with_album_ids)
    }
  end

  private
  def song_params
    params.require(:song).permit(
      :title,
      :slug,
      :translator,
      :translator_url,
      :music_url,
      :youtube_url,
      :lyrics,
      :translation
    )
  end
end
