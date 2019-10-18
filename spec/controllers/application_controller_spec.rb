require "spec_helper"

def app
  ApplicationController
end

describe ApplicationController do
  it "should responds with a welcome message" do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Welcome to the Sinatra Template!")
  end

  it 'should respond with a 404 page' do
    get '/undefined_route'
    expect(last_response.status).to eq(404)
    expect(last_response.body).to include('Sinatra doesn’t know this ditty')
  end
end
