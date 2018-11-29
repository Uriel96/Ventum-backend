class Student < ApplicationRecord
  has_many :registers
  #mount_uploader :photo, ImageUploader
end
