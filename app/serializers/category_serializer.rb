class CategorySerializer
  def initialize(data)
    @data = data
  end

  def to_simple_json
    options = {
      only: [
        :id,
        :name,
        :color
      ]
    }
    @data.to_json(options)
  end

  # def to_complete_json
  #   options = {
  #     include: {
  #       flash_cards: {
  #         only: [
  #           :id,
  #           :front,
  #           :back,
  #           :notes
  #         ]
  #       }
  #     },
  #     only: [
  #       :id,
  #       :name,
  #       :color
  #     ]
  #   }
  #   @data.to_json(options)
  # end
end
