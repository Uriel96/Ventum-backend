class Event < ApplicationRecord
  mount_uploader :poster, PhotoUploader
  belongs_to :place
  has_many :reservations
end
