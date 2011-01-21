class InstructionsController < ApplicationController

  def new
    @instruction = Instruction.new(session[:instruction_attributes])
  end

end