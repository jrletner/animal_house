class Animal < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :age, presence: true
  validates :image_url, presence: true
  validates :description, presence: true
  validates :adoptable, presence: true
end
