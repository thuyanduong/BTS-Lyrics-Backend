class ApplicationController < ActionController::API
  def bts
    render json: AlbumType.all, include: '**'
  end

  def search
    if params["lyrics"]
      render json: {
        songs: Song.where("REPLACE(lyrics, ' ', '') ILIKE ?", "%#{params["lyrics"].gsub(/\s+/, "")}%"),
        query: "lyrics=#{params["lyrics"]}"
      }, adapter: nil
    elsif params["translation"]
      render json: {
          songs: Song.where("translation ilike ?", "%#{params["translation"]}%"),
          query: "translation=#{params["translation"]}"
      }, adapter: nil
    else
      render json: {songs: [], query:""}
    end
  end
end
