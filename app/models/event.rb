class Event < ApplicationRecord
  belongs_to :place
  has_and_belongs_to_many :areas
  has_many :reservations
  mount_uploader :poster, ImageUploader
end
