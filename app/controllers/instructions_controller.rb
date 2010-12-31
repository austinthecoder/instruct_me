class InstructionsController < ApplicationController

  def new
    @instruction = Instruction.new
  end

end