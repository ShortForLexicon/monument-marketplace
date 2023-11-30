class Monument < ApplicationRecord
  has_many :offers
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  has_one_attached :photo
end
