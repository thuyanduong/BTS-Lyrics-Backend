class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :categories

  def user_data
    {
      user_data: JSON.parse(UserSerializer.new(self).to_json),
      categories: self.categories,
      recent_flash_cards: self.recent_flash_cards
    }
  end

  def flash_cards
    results = []
    self.categories.each{|category| results = results + category.cards}
    results.uniq!
    results.sort!{|a,b| b.updated_at <=> a.updated_at}
  end

  def recent_flash_cards
    results = []
    self.categories.each{|category| results = results + category.cards}
    results.uniq!
    results.sort!{|a,b| b.updated_at <=> a.updated_at}
    results.take(12)
  end
end
