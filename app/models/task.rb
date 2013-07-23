class Task < ActiveRecord::Base
  attr_accessible :item

  has_many :steps

  validates :item, :presence => true
end
