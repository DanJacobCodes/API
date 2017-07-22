require 'rails_helper'

describe "update a business route", :type => :request do

  before do
    business = FactoryGirl.create(:business)
    patch '/businesses/' + business.id.to_s, params: { :name => 'test_business'}
  end
  # 
  # it 'updates the business name' do
  #   expect(JSON.parse(response.body)['name']).to eq('Business Updated!')
  # end


  it 'returns status code 200' do
    expect(response).to have_http_status :ok
  end

end
