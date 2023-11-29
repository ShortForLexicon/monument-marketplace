class Monument < ApplicationRecord
  has_many :offers
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
