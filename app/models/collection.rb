class Collection < ApplicationRecord
  belongs_to :insect
  belongs_to :user
  mount_uploader :picture, PhotoUploader
end
