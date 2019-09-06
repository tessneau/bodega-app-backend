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

          cart = cart_item.cart
          cart.update(total_price: cart.add_new_total)

          render json: {cart_item: CartItemSerializer.new(cart_item), cart: CartSerializer.new(cart)}
        else
          render json: { errors: cart_item.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        cart_item = CartItem.find(params[:id])
        cart = cart_item.cart
        cart_item.destroy
        cart.update(total_price: cart.add_new_total)
        render json: cart
      end

      private

      def cart_item_params
        params.require(:cart_item).permit(:cart_id, :item_id, :name, :price, :img_url)
      end

    end
  end
end
