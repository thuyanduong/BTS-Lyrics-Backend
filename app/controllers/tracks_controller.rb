class TracksController < ApplicationController
  def update
    album = Album.find(params[:id])
    Track.where(album_id: params[:id]).destroy_all
    params[:tracks].each{|track|
      Track.create({
        album_id: params[:id],
        song_id: track["song"]["id"],
        track_number: track["track_number"]}
      )
    }
    render json: {
      error: false,
      message: "Successully updated tracks.",
      resource: JSON.parse(AlbumSerializer.new(Album.find(params[:id])).to_complete_json)
    }
  end
end
