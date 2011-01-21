class InstructionAttributesController < ApplicationController

  def update
    session[:instruction_attributes] = params[:instruction]
    redirect_to root_url
  end

end