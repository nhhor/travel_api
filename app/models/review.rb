class Review < ApplicationRecord
  belongs_to :destination
  validates :review_title, presence: true
  validates :review_body, presence: true
  validates :rating, presence: true
  validates :user_id, presence: true
  validates :destination_id, presence: true
end
