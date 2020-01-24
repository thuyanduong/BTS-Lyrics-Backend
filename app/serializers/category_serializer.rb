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
end
