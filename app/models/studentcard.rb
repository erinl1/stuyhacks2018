class Studentcard < ApplicationRecord
  belongs_to :student
  has_many :swipes, dependent: :destroy
  delegate :name, to: :student, prefix: true
end
