class Measurement < ApplicationRecord
  belongs_to :house
  validates :level, presence: true
end
