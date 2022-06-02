class CategoriesController < ApplicationController
    get '/categories' do
        categories = Category.all
        categories.to_json
      end
    
      get '/categories/:id' do
        Category.find(params[:id]).to_json
      end
    
      post '/categories' do 
        category = Category.create(
          name: params[:name]
        )
        category.to_json
      end
    
      delete '/categories/:id' do
        category = Category.find(params[:id])
        category.destroy
        category.to_json
      end
    
end