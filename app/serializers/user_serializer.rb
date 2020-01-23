class UserSerializer
  def initialize(data)
    @data = data
  end

  def to_json
    options = {
      only: [
        :username,
        :admin,
        :id
      ]
    }
    @data.to_json(options)
  end
end
