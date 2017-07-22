require 'rails_helper'
describe 'return a random business', :type=>:request do

  before {
    @business = FactoryGirl.create(:business)
    get '/businesses?get_random='
  }

  it 'returns 200 status' do
    expect(response).to have_http_status(:success)
  end
end
