class House < ApplicationRecord
  belongs_to :user
  has_many :measurements, dependent: :destroy
  validates :address, presence: true
  validates :surface_in, presence: true
  validates :surface_out, presence: true
  validates :url, presence: true, uniqueness: true
  validates_associated :measurements

  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
