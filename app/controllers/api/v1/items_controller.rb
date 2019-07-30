module Api
  module V1
    class ItemsController < ApplicationController

      def index
        items = Item.all
        render json: items, except: [:created_at, :updated_at]
      end

      def create
        item = Item.create(item_params)
        if item.valid?
          render json: item
        else
          render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def item_params
        params.require(:item).permit(:name, :description, :price, :img_url, :category_id)
      end

    end
  end
end
