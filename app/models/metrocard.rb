class Metrocard < ApplicationRecord
  belongs_to :student
  has_many :rides
  delegate :name, to: :student, prefix: true
end
