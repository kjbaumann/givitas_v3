class Reservation < ApplicationRecord
  belongs_to :event, optional: true
  belongs_to :user
end
