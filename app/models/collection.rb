class Collection < ApplicationRecord
  belongs_to :insect
  belongs_to :user, optional: true
  mount_uploader :picture, PhotoUploader
end
