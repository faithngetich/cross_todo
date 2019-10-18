require 'spec_helper'

RSpec.describe 'Lists API', type: :controller do
  # initialize test data
  let!(:lists) { create_list(:list, 20) }
  let(:list_id) { lists.first.id }

  describe 'GET /lists' do

    it 'returns todos' do
      get '/lists'
      expect(last_response.body).not_to be_empty
      expect(last_response.body.size).to eq(20)
    end
  end
  # Test suite for GET /lists/:id
  # Test suite for POST /lists
  # Test suite for PUT /lists/:id
  # Test suite for DELETE /lists/:id
end