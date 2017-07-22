require 'rails_helper'

describe "deletes a business route", :type => :request do

  it 'returns a created status' do
    expect(response).to have_http_status(200)
  end
end
