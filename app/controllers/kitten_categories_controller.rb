class KittenCategoriesController < ApplicationController

  def new
    @kitten = Kitten.find(params[:kitten_id])
    @kitten_category = KittenCategory.new
  end

  def create
    @kitten = Kitten.find(params[:kitten_id])
    if current_user
      @kitten_category = KittenCategory.new
      @kitten_category.kitten_id = @kitten.id
      @kitten_category.category_id = params[:kitten_category][:category_id]
      if @kitten_category.save
        redirect_to root_url
      else
        render :new
      end
    else
      redirect_to login_path, notice: "Must be logged in to review a company"
    end
  end
end
