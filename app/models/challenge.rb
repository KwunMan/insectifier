class Challenge < ApplicationRecord
  belongs_to :insect, optional: true
  has_many :badge

  def done?(user)
    user.challenges.include? self
  end

  def condition_fullfilled?(user)
    user.insects.find_by family: self.family

  end
end
