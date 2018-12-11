class Badge < ApplicationRecord
  belongs_to :challenge
  mount_uploader :image, PhotoUploader
end
