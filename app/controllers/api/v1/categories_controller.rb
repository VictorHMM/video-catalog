class Api::V1::CategoriesController < ApplicationController
    before_action :set_category, only [:show]
   
   # GET /api/v1/categories

    def index
        @categories = Category.all
        render json: @categories
    end

    # POST /api/v1/categories

    def create
        @category = Category.new(category_params)

        if @category.save
            render json: @category, status: :created
        else
            render json: @category.errors, status: :unprocessable_entity
        end
    end


   private

   def set_category
        @category = Category.find(params[:id])
   end

   def category_params
        params.require(:category).permit(:name)
   end
end
