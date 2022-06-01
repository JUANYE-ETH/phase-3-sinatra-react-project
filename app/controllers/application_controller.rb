class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/categories" do
    categories = Category.all

    categories.to_json
  end

  get "/todos" do
    todos = Todo.all

    todos.to_json
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
end
