class Destination < ApplicationRecord
  has_many :reviews
  validates :name, presence: true
  validates :country, presence: true
  validates :city, presence: true
end
