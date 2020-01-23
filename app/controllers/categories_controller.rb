class CategoriesController < ApplicationController
  def show
    category = Category.find(params[:id])
    data = category.attributes
    flash_cards = category.flash_cards.map{|f| f.card}
    data[:flash_cards] = flash_cards
    render json: data
  end

  def create
    category = Category.create(categories_params)
    render json: {
      error: false,
      message: "Successfully created new category.",
      resource: category
    }
  end

  def update
    category = Category.find(params[:id])
    category.update(categories_params)
    render json: {
      error: false,
      message: "Successfully saved category.",
      resource: category
    }
  end

  def destroy
    category = Category.find(params[:id])
    if(category.flash_cards.length > 0)
      render json: {
        error: true,
        message: "Cannot delete a category with flash cards. Remove flash cards from category first and try again.",
        resource: category
      }
    else
      category.destroy
      render json: {
        error: false,
        message: "Successfully deleted category.",
        resource: category
      }
    end
  end

  private
  def categories_params
    params.require(:category).permit(
      :user_id,
      :color,
      :name
    )
  end
end
