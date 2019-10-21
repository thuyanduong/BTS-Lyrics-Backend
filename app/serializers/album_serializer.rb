class AlbumSerializer

  def initialize(data)
    @data = data
  end

  def to_simple_json
    options = {
      only: [
        :id,
        :album_type_id,
        :title,
        :slug
      ]
    }
    @data.to_json(options)
  end

  def to_complete_json
    options = {
      include: {
        tracks: {
          only: [
            :track_number
          ],
          include: {
            song: {
              only: [
                :id,
                :title,
                :slug
              ]
            }
          }
        }
      },
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
    @data.to_json(options)
  end

end
