require 'rails_helper'

describe "get all reviews route", :type => :request do


  before do
    post '/destinations', params: { :name => 'noahs fave spot', :country => 'spain', :city => 'barcelona' }
    post "/destinations/#{Destination.first.id}/reviews", params: {:review_title => "noah", :review_body => "noah", :rating => 1, :user_id => 3, :destination_id => "#{Destination.first.id}"}
    get "/destinations/#{Destination.first.id}/reviews"
  end

    it "gets a review" do

      expect(JSON.parse(response.body)[0].values).to include("noah")

    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
