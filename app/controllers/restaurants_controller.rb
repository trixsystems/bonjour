class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show
  def index
    @restaurants = Restaurant.near(params[:city]|| 'Parnaiba')
    filter_by_category if params[:category]

    render json: @restaurants
  end

  def show
    render json: @restaurants, product_category: true
  end

  def search
    @restaurants = Restaurant.search(name_or_description param[:q]).result
    @restaurants = @restaurants.near(params[:city]) if params[:city]

    render json: @restaurants
  end

  private

  def filter_by_category
    @restaurants = Restaurant.select do |restaurant|
      restaurant.category.title == params[:category]
    end
  end

  def set_restaurant
    @restaurants = Restaurant.find_by(id: params[:id])
  end

end
