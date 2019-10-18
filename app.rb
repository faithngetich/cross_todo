require 'sinatra'
require 'sinatra/cross_origin'
require 'sinatra/activerecord'
require './config/environments'
require './config/cors'
require '.app/models/list'
require '.app/models/Todo'
require 'json'

# before do
#   content_type :json
# end

# get '/' do
#   content_type :html
#   send_file './public/index.html'
# end

# get '/lists' do
#   List.all.to_json(include: :todos)
# end

# get '/lists/:id' do
#   List.where(id: params['id']).first.to_json(include: :todos)
# end

# post '/lists' do
#   list = List.new(params)

#   if list.save
#     list.to_json(include: :todos)
#   else
#     halt 422, list.errors.full_messages.to_json
#   end
# end

# put '/lists/:id' do
#   list = List.where(id: params['id']).first

#   if list
#     list.name = params['name'] if params.has_key?('name')
#     list.color = params['color'] if params.has_key?('color')

#     if list.save
#       list.to_json
#     else
#       halt 422, list.errors.full_messages.to_json
#     end
#   end
# end

# delete '/lists/:id' do
#   list = List.where(id: params['id'])

#   if list.destroy_all
#     {success: "ok"}.to_json
#   else
#     halt 500
#   end
# end

