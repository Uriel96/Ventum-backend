class Student < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :registers
end
