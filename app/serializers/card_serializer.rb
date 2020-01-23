class CardSerializer

  def initialize(data)
    @data = data
  end

  def to_json
    options = {
      only: [
        :id,
        :korean,
        :english,
        :notes
      ],
      include: {
        categories: {
          only: [
            :id,
            :name,
            :color
          ]
        }
      }
    }
    @data.to_json(options)
  end

end
