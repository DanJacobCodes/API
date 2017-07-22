require 'rails_helper'

describe "post a business route", :type => :request do

  before do
    post '/businesses', params: { :name => 'test_name' }
  end

  it 'returns the business name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
