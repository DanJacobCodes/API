require 'rails_helper'

describe "it gets all businesses route", :type => :request do
  let!(:businesses) { FactoryGirl.create_list(:business, 5)}

  before { get '/businesses'}

    it 'returns all businesses' do
      expect(JSON.parse(response.body).size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
