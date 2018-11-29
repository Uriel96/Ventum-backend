class Event < ApplicationRecord
  belongs_to :place
  has_many :reservations
end
