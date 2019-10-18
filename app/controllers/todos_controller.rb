class TodosController < ApplicationController
  before do
    content_type :json
  end

  get '/todos' do
    Todo.all.to_json
  end

  get '/todos/:id' do
    Todo.where(id: params['id']).first.to_json
  end

  post '/todos' do
    Todo = Todo.new(params)

    if Todo.save
      Todo.to_json
    else
      halt 422, Todo.errors.full_messages.to_json
    end
  end

  put '/todos/:id' do
    Todo = Todo.where(id: params['id']).first

    if Todo
      Todo.name = params['name'] if params.has_key?('name')

      if Todo.save
        Todo.to_json
      else
        halt 422, Todo.errors.full_messages.to_json
      end
    end
  end

  delete '/todos/:id' do
    Todo = Todo.where(id: params['id'])

    if Todo.destroy_all
      {success: "ok"}.to_json
    else
      halt 500
    end
  end
end
