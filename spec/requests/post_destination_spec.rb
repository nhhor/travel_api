require 'rails_helper'

describe "post a destination route", :type => :request do

  before do
    post '/destinations', params: { :name => 'noahs fave spot', :country => 'spain', :city => 'barcelona' }
  end

  it 'returns the destination name' do
    expect(JSON.parse(response.body)['name']).to eq('noahs fave spot')
  end

  it 'returns the destination country' do
    expect(JSON.parse(response.body)['country']).to eq('spain')
  end

  it 'returns the destination city' do
    expect(JSON.parse(response.body)['city']).to eq('barcelona')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
