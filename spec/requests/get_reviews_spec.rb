# require 'rails_helper'
#
# describe "get all reviews route", :type => :request do
#   let!(:destinations) { FactoryBot.create_list(:destination, 2)}
#   # let!(:reviews) { FactoryBot.create_list(:review, 5)}
#
#   # before { post "/destinations/#{Destination.first.id}/reviews", {:review_title => "noah", :review_body => "noah", :rating => "noah", :user_id => "noah", :destination_id => "noah"}}
#
#
#
#
#   # it 'returns all reviews' do
#
#
#     it "creates a Widget and redirects to the Widget's page" do
#       headers = { "CONTENT_TYPE" => "application/json" }
#       post "/destinations/#{Destination.first.id}/reviews", :params => '{ "review": { "review_title":" noah", "review_body":"noah", "rating":"noah", "user_id":"noah", "destination_id":"noah" } }', :headers => headers
#       p "/destinations/#{Destination.first.id}/reviews"
#       byebug
#       # get "/destinations/#{Destination.first.id}/reviews"
#       expect(JSON.parse(response.body).size).to eq(1)
#       # expect(response).to redirect_to(assigns(:review))
#     end
#
#
#     # post "/destinations/#{Destination.first.id}/reviews", {:review_title => "noah", :review_body => "noah", :rating => "noah", :user_id => "noah", :destination_id => "noah"}
#     # binding.pry
#     #   byebug
#     # end
#
#     it 'returns status code 200' do
#       expect(response).to have_http_status(:success)
#     end
#   end
# # end
