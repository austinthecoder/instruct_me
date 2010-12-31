class Instruction < ActiveRecord::Base

  ### normalizations ###
  normalize_attributes :title

  ### validations ###
  validates :title, :presence => true

  ### associations ###
  has_many :steps, :order => 'position'

end
