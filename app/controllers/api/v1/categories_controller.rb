module Api
  module V1
    class CategoriesController < ApplicationController

    def index
      categories = Category.all
      render json: categories
    end

    def create
      category = Category.create(category_params)
      if category.valid?
        render category
    end

    def show
      name = params[:name].capitalize
      category = Category.find_by(name: name)
      render json: category.to_json(include: :items)
    end

    private

    def category_params
      params.require(:category).permit(:name)
    end

    end
  end
end
