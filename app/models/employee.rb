class Employee < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :reservations
end
