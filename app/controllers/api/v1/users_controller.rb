module Api
  module V1
    class UsersController < ApplicationController

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
        render json: User.first.to_json(include: {
          carts: {include: :cart_items}
        })
      end

      private

      def user_params
        params.permit(:username, :password, :wallet)
      end

    end
  end
end
