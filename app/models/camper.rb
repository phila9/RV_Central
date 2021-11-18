class Camper < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, :description, :price, presence: true
  has_one_attached :image
end
