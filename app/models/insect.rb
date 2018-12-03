class Insect < ApplicationRecord
  has_many :collections
  mount_uploader :photo, PhotoUploader
end
