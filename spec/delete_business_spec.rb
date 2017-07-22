
require 'rails_helper'
describe 'deletes one business', :type=>:request do
  before {
    @business = FactoryGirl.create(:business)
    delete '/businesss/'+@business.id.to_s
  }

  it 'returns delete confirmation' do
    expect(JSON.parse(response.body)['message']).to eq("Business removed")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
