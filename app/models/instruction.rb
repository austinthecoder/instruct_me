class Instruction < ActiveRecord::Base

  ### normalizations ###
  normalize_attributes :title

  ### validations ###
  validates :title, :presence => true

  ### associations ###
  has_many :steps, :order => 'position'
  accepts_nested_attributes_for :steps, :allow_destroy => true

  ### callbacks ###
  after_initialize do
    steps.build if steps.empty?
    steps.build if @add_step
  end

  def add_step
    false
  end

  def add_step=(val)
    @add_step = true if val == '1'
  end

end
