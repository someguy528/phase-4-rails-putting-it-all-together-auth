class RecipesController < ApplicationController
    
    def index
        recipes = Recipe.all
        render json: recipes, status: :created
    end
    
    def create
        # recipe = Recipe.create!(recipe_params)
        recipe = @user.recipes.create!(recipe_params)
        render json: recipe, status: :created
    end

    private

    def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
    #     {title: params[:title], 
    #     instructions: params[:instructions],
    #     minutes_to_complete: params[:minutes_to_complete],
    #     user_id: session[:user_id]
    # }
    end
end
