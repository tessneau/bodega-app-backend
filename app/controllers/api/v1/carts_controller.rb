module Api
  module V1
    class CartsController < ApplicationController

    def index
      carts = Cart.all
      render json: carts
    end

    def create
      cart = Cart.create(user: super_current_user)
      super_current_user.update(wallet: params[:wallet])
      render json: super_current_user
    end

    def show
      cart = Cart.find(params[:id])
      render json: cart

    end

    # def update
    #   byebug
    # end

    private

    def cart_params
      #this might not be needed
      params.require(:cart).permit(:user_id)
    end

    end
  end
end
