class Card < ApplicationRecord
  has_one :user

  SUITS = ['♠️', '♣️', '♥️', '♦️']
  RANKS = [ 'A', 'K', 'Q', 'J', '2', '3', '4', '5', '6', '7', '8', '9', '10']

  def self.create_deck
    self.all.delete_all
    SUITS.each do |suit|
      RANKS.each do |rank|
        Card.create(suit: suit, rank: rank)
      end
    end
    puts Card.all.count
  end
  def is_number? string
    true if Float(string) rescue false
  end

  def self.random(num)
    Card.where(user_id: nil).sample(num)
  end
  def value
    if self.is_number?(self.rank)
      return self.rank.to_i
    else
      return 12
    end
  end
end
