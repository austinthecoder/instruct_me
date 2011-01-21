class Step < ActiveRecord::Base

  acts_as_list :scope => :instruction_id

  ### associations ###
  belongs_to :instruction
  has_many :commands, :order => 'position'
  accepts_nested_attributes_for :commands, :allow_destroy => true

  ### callbacks ###
  after_initialize { commands.build if commands.empty? }

  def add_command
    false
  end

  def add_command=(val)
    commands.build if val == '1'
  end

end