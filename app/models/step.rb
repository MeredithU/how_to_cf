class Step < ActiveRecord::Base
  attr_accessible :todo

  belongs_to :task

end
