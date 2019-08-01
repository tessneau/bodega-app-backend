module Api
  module V1
    class CartItemsController < ApplicationController

      def index
        cart_items = CartItem.all
        render json: cart_items
      end

      def create
        cart_item = CartItem.create(cart_item_params)
        if cart_item.valid?
          #updates cart total
          cart = cart_item.cart
          cart.update(total_price: cart.new_total)
          render json: cart_item
        else
          render json: { errors: cart_item.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
      end

      private

      def cart_item_params
        params.require(:cart_item).permit(:cart_id, :item_id, :name, :price, :img_url)
      end

    end
  end
end
