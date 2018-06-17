class Student < ApplicationRecord
  belongs_to :school
  has_one :metrocard, dependent: :destroy
  has_one :studentcard, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: ->(student){student.address.present? and student.address_changed? }
  delegate :rides, to: :metrocard
  delegate :swipes, to: :studentcard
end
