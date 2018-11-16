class Event < ApplicationRecord
  belongs_to :location
  has_and_belongs_to_many :areas
  has_many :registers
end
