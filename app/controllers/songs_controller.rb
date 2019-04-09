class SongsController < ApplicationController
  def show
    song = Song.find_by({slug: params[:slug], is_duplicate: false})
    if(song)
      render json: song, serializer: CompleteSongSerializer
    else
      song = Song.find_by({slug: params[:slug], is_duplicate: true})
      if(song)
        render json: Song.find(song.duplicate_song_id), serializer: CompleteSongSerializer
      else
        render json: nil
      end
    end
  end

  def show_by_id
    render json: Song.find(params[:id]), serializer: CompleteSongSerializer
  end

  def create
    @song = Song.find_by(slug: params[:slug])
    is_duplicate = params[:is_duplicate]
    if(@song && !is_duplicate)
      render json: {
        error: true,
        message: "Another song with this title already exists. Check 'Duplicate Song' if this is a duplicate song.",
        resource: nil
      }, status: :conflict
    else
      render json: {
        error: false,
        message: "Successfully created new song.",
        resource: JSON.parse(Song.create(song_params).to_json(only: get_params_array))
      }
    end
  end

  def update
    @song = Song.find_by(slug: params[:slug])
    is_duplicate = params[:is_duplicate]
    if(@song && ((@song.id != params[:id].to_i && is_duplicate) || (@song.id == params[:id].to_i && !is_duplicate)))
      Song.find(params[:id]).update(song_params)
      render json: {
        error: false,
        message: "Successfully saved song.",
        resource: JSON.parse(Song.find(params[:id]).to_json(only: get_params_array))
      }
    elsif(@song && @song.id != params[:id] && !is_duplicate)
      render json: {
        error: true,
        message: "Another song with this title already exists. Check 'Duplicate Song' if this is a duplicate song.",
        resource: nil
      }, status: :conflict
    elsif(@song && @song.id == params[:id].to_i && is_duplicate)
      render json: {
        error: true,
        message: "Cannot save song as a duplicate of itself. Uncheck 'Duplicate Song'.",
        resource: nil
      }, status: :conflict
    else
      render json: {
        error: true,
        message: "Cannot find song to save.",
        resource: nil
      }, status: :not_found
    end
  end

  def destroy
    Song.where('duplicate_song_id = ?', params[:id]).destroy_all
    render json: {
      error: false,
      message: "Successfully deleted song.",
      resource: JSON.parse(Song.find(params[:id]).destroy.to_json(only: get_params_array))
    }
  end

  def get_params_array
    [:id, :title, :slug, :album_id, :album_type_id, :track_number, :is_duplicate, :duplicate_song_id]
  end

  def song_params
    params.require(:song).permit(:title, :slug, :album_id, :album_type_id,
      :track_number, :translator, :translator_url, :music_url, :youtube_url,
      :is_duplicate, :duplicate_song_id, :lyrics, :translation
    )
  end
end
