class Event < ApplicationRecord
  belongs_to :place
  has_many :reservations
  #mount_uploader :poster, ImageUploader
end
