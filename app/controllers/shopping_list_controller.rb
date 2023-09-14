class ShoppingListController < ApplicationController
    def index
      @shopping_list_items = ShoppingListItem.includes(:recipe, :food).all
      @total_price = @shopping_list_items.sum { |item| item.quantity * item.food.unit_price }
    end
  end
  
