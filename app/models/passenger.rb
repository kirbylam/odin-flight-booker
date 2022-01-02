class Passenger < ApplicationRecord
  has_one :booking

  validates :name, presence: true
  validates :email, presence: true
end
