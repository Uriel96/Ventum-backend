class Reservation < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :event
end
