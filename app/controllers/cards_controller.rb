class CardsController < ApplicationController
  def index
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user = User.find(payload["user_id"])
    render json: user.flash_cards
  end

  def show
    render json: CardSerializer.new(Card.find(params[:id])).to_json
  end

  def create
    card = Card.create(card_params)
    params[:categories].each{|category|
      FlashCard.create(card_id: card[:id], category_id: category[:id])
    }
    render json: {
      error: false,
      message: "Successully created new flash card.",
      resource: JSON.parse(CardSerializer.new(card).to_json)
    }
  end

  def update
    card = Card.find(params[:id])
    old_category_ids = card.categories.map{|category| category.id}
    new_category_ids = params[:categories].map{|category| category[:id]}
    card.update(card_params)
    card.flash_cards.each{|flash_card|
      flash_card.destroy
    }
    params[:categories].each{|category|
      FlashCard.create(card_id: card[:id], category_id: category[:id])
    }
    card = JSON.parse(CardSerializer.new(card).to_json)
    card["old_categories"] = old_category_ids
    card["new_categories"] = new_category_ids
    render json: {
      error: false,
      message: "Successfully saved flash card.",
      resource: card
    }
  end

  def destroy
    card = Card.find(params[:id])
    card.flash_cards.each{|flash_card|
      flash_card.destroy
    }
    card.destroy
    render json: {
      error: false,
      message: "Successfully deleted flash card.",
      resource: card
    }
  end

  private
  def card_params
    params.require(:card).permit(:korean, :english, :notes)
  end

end
