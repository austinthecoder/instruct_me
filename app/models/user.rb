class User

  def initialize(id)
    @id = id.to_s
  end

  def instructions
    Instruction.where(:user_id => @id)
  end

  # def build_instruction(attrs = {})
  #   Instruction.new(attrs.merge(:user_id => @id))
  # end

end