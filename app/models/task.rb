class Task < ActiveRecord::Base
  attr_accessible :item, :task_id

  has_many :steps, :dependent => :destroy

  validates :item, :presence => true
end
