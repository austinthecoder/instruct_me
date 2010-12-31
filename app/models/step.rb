class Step < ActiveRecord::Base

  acts_as_list :scope => :instruction_id

  ### associations ###
  belongs_to :instruction

end