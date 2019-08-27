module Api
  module V1
    class UsersController < ApplicationController

      def index
        users = User.all
        render json: users
      end

      def show
        user = User.find(params[:id])
        render json: user
      end

      def create
        user = User.create(user_params)

        if user.valid?
          Cart.create(user: user)
          render json: { token: encode_token(user) }
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def profile
        # render json: User.find(1).to_json(include: {
        #   carts: {include: :cart_items}
        # })
        render json: User.find(1)
      end

      def update
        if params[:wallet]
          user = User.find(params[:id])
          user.update(wallet: params[:wallet])
          render json: user
        else
          render json: { errors: ["wallet error"] }, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.permit(:username, :password, :wallet)
      end

    end
  end
end
