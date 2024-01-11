class Plant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true

  belongs_to :garden
end
