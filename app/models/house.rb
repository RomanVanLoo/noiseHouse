class House < ApplicationRecord
  belongs_to :user
  has_many :measurements, dependent: :destroy
  validates :address, presence: true
  validates :surface_in, presence: true
  validates :surface_out, presence: true
  validates :url, presence: true, uniqueness: true
  validates_associated :measurements

  mount_uploader :photo, PhotoUploader
end
