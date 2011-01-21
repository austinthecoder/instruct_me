class Command < ActiveRecord::Base

  acts_as_list :scope => :step_id

  ### associations ###
  belongs_to :step

end