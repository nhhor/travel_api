require 'rails_helper'

describe "post a review route", :type => :request do

  before do
    post '/destinations', params: { :name => 'noahs fave spot', :country => 'spain', :city => 'barcelona' }
    post "/destinations/#{Destination.first.id}/reviews", params: {:review_title => "noah", :review_body => "noah", :rating => 1, :user_id => 3, :destination_id => "#{Destination.first.id}"}
  end

  it 'returns the review title' do
    expect(JSON.parse(response.body)['review_title']).to eq('noah')
  end

  it 'returns the review body' do
    expect(JSON.parse(response.body)['review_body']).to eq('noah')
  end

  it 'returns the review rating' do
    expect(JSON.parse(response.body)['rating']).to eq(1)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
