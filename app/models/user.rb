class User < ApplicationRecord
  has_many :cards

  def hand_value
    value = 0
    self.cards.each do |card|
      value = value + card.value
    end
    return value
  end
end
