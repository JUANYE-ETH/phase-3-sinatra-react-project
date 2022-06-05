class TodosController < ApplicationController

  get '/todos' do
    todos = Todo.todos_and_category

    todos.to_json
  end

  get '/todos/:id' do 
    Todo.find(params[:id]).to_json
  end

  post '/todos' do
    todo = Todo.create(
      text:         params[:text],
      category_id:  params[:category_id],
    )
    
    todo.to_json
  end

  patch '/todos/:id' do
    # binding.pry
    todo = Todo.find(params[:id])

    todo.update(
      text:         params[:text],
      category_id: params[:category_id]
    )
    
    todo.to_json
  end

  delete '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end
end