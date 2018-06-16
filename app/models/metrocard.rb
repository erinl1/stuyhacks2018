class Metrocard < ApplicationRecord
  belongs_to :student
  has_many :rides, dependent: :destroy
  delegate :name, to: :student, prefix: true
end
