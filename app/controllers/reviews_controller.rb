class ReviewsController < ApplicationController


  def index
    @destination = Destination.find(params[:destination_id])

    @reviews = @destination.reviews
    json_response(@reviews)
  end

  def show
    @destination = Destination.find(params[:destination_id])
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @destination = Destination.find(params[:destination_id])
    @review = Review.create!(review_params)
    json_response(@review, :created)
  end

  def update
    @destination = Destination.find(params[:destination_id])
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        message: "This review has been updated successfully."
      }
    end
  end

  def destroy
    @destination = Destination.find(params[:destination_id])
    @review = Review.find(params[:id])
    if @review.destroy!
      render status: 200, json: {
        message: "This review has been deleted successfully."
      }
    end
  end

  private
  def review_params
    params.permit(:review_title, :review_body, :rating, :user_id, :destination_id)
  end
end
