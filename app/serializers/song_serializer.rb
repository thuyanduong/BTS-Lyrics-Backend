class SongSerializer

  def initialize(data)
    @data = data
  end

  def to_simple_json
    options = {
      only: [
        :id,
        :title,
        :slug
      ]
    }
    @data.to_json(options)
  end

  def to_simple_json_with_album_ids
    options = {
      only: [
        :id,
        :title,
        :slug
      ],
      include: {
        tracks: {
          only: [

          ],
          include: {
            album: {
              only: [
                :id,
                :album_type_id
              ]
            }
          }
        }
      }
    }
    @data.to_json(options)
  end

  def to_complete_json
    options = {
      include: {
        albums: {
          only: [
            :id,
            :album_type_id,
            :title,
            :slug,
            :release_date,
            :image_url,
            :music_url
          ]
        }
      },
      only: [
        :id,
        :title,
        :slug,
        :translator,
        :translator_url,
        :music_url,
        :youtube_url,
        :lyrics,
        :translation,
        :albums
      ]
    }
    @data.to_json(options)
  end

end
