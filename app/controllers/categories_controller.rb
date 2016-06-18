class CategoriesController < ApplicationController

	def create
		category_params = params.require(:category).permit(:name)
		@category = Category.new(category_params)

		if @category.save
			redirect_to @category, notice: 'Category was successfully creared.'
		else
			render :new
		end
	end
	

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end


end
