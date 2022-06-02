class TodosController < ApplicationController

  get '/todos' do
    todos = Todo.all

    todos.to_json
  end

  get '/todos/:id' do 
    Todo.find(params[:id]).to_json
  end

  post '/todos' do
    # create a new equipment in the database
    # params is a hash of key-value pairs coming from the body of the request
    todo = Todo.create(
      text:         params[:text],
      category_id:  params[:category_id],
    )
    
    # send back a response with the created equipment as JSON
    todo.to_json
  end

  patch '/todos/:id' do
    # find the equipment using the ID
    todo = Todo.find(params[:id])

    todo.update(
      text:         params[:text],
      category_id: params[:category_id]
    )

    # send back the updated equipment as JSON
    todo.to_json
  end

  # delete '/todos/:id' do
  #   todo = Todo.find(params[:id].to_json)

  #   todos_to_del = Todo.find(params[:id].to_json)

  #   todos_to_del.destroy
  #   todo.destroy
  #   todo.to_json
  # end
  delete '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end
end