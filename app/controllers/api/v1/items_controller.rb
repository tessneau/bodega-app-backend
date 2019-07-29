module Api
  module V1
    class ItemsController < ApplicationController

      def index
        items = Item.all
        render json: items, except: [:created_at, :updated_at]
      end

    end
  end
end
