class IngredientsInRecipesController < ApplicationController
  before_action :set_ingredients_in_recipe, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ingredients_in_recipes = IngredientsInRecipe.all
    respond_with(@ingredients_in_recipes)
  end

  def show
    respond_with(@ingredients_in_recipe)
  end

  def new
    @ingredients_in_recipe = IngredientsInRecipe.new
    respond_with(@ingredients_in_recipe)
  end

  def edit
  end

  def create
    @ingredients_in_recipe = IngredientsInRecipe.new(ingredients_in_recipe_params)
    @ingredients_in_recipe.save
    respond_with(@ingredients_in_recipe)
  end

  def update
    @ingredients_in_recipe.update(ingredients_in_recipe_params)
    respond_with(@ingredients_in_recipe)
  end

  def destroy
    @ingredients_in_recipe.destroy
    respond_with(@ingredients_in_recipe)
  end

  private
    def set_ingredients_in_recipe
      @ingredients_in_recipe = IngredientsInRecipe.find(params[:id])
    end

    def ingredients_in_recipe_params
      params.require(:ingredients_in_recipe).permit(:recipe_id, :ingredient_id, :amount)
    end
end
