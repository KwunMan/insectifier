class Challenge < ApplicationRecord
  belongs_to :insect, optional: true
end
