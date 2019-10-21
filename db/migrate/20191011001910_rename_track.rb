class RenameTrack < ActiveRecord::Migration[5.2]
  def change
    rename_table :album_songs, :tracks
  end
end
