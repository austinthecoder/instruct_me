class InstructionAttributesController < ApplicationController

  def update
    session[:instruction_attributes] = params[:instruction]
    if params[:save]
      i = Instruction.create!(session[:instruction_attributes])
      redirect_to instruction_url(i)
    else
      redirect_to root_url
    end
  end

end