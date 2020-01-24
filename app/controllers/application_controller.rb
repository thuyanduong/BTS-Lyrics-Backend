class ApplicationController < ActionController::API
  def bts
    render json: AlbumTypeSerializer.new(AlbumType.all).to_complete_json
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

  def secret_key
    Rails.application.secrets.secret_key_base
  end

  def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
  end

  def decode(token)
    JWT.decode(token, secret_key, true, {algorithm: 'HS256'})[0]
  end
end
