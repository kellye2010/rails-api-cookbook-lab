# frozen_string_literal: true
class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  def show
    # binding.pry
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredient
  end

  def update
    @update = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def create
    @create = Ingredient.find(params[:id])

    if @ingredient.save
      render json: @ingredient, status: :created
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @destroy = Ingredient.find(params[:id])
    @ingredient.destroy
    head :no_content
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :unit)
  end
end
