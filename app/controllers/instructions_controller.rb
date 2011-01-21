class InstructionsController < ApplicationController

  def new
    session[:instruction_attributes] = params[:instruction] if params[:instruction]

    @instruction = Instruction.new(session[:instruction_attributes])

    if params[:instruction] # form submitted
      if params[:save] # save button pressed
        redirect_to instruction_url(@instruction) if @instruction.save
      else
        redirect_to root_url
      end
    end
  end

  def show
    @instruction = Instruction.find(params[:id])
  end

end