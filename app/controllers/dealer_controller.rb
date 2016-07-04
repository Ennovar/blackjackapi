class DealerController < ApplicationController
  before_action :set_user
  def deal
    if !@user
      @user = User.create(username: params[:username])
    end
    if @user.cards.count > 0
      render json: {message: 'Already in the game', error: true}
    else
      @user.cards << Card.random(2)
      render json: @user.cards
    end
  end

  def start
    Card.create_deck
    render json: Card.all
  end

  def stand
    @user.stand = true
    @user.save
    value = @user.hand_value
    render json: {message: "Your hand value is #{value}", value: value}
  end

  def hit
    if @user.cards.count == 0
      render json: {message: 'You must join the game by dealing first', error: true}
    else
      @user.cards << Card.random(1)
      render json: @user.cards
    end
  end

  def hand
    render json: @user.cards
  end

  def play
  end

  private
  def set_user
    @user = User.where(username: params[:username]).first
  end
end
