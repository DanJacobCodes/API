require 'rails_helper'

describe 'deletes one business', :type=>:request do
  before do
    business = FactoryGirl.create(:business)
    delete '/businesses/' + business.id.to_s
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :ok
  end

end
