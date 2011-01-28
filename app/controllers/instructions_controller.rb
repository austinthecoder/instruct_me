class InstructionsController < ApplicationController

  before_filter :build_instruction, :only => %w(new)
  before_filter :find_instruction, :only => %w(show edit update)

  def new
  end

  def create
    session[:new_instruction_attrs] = params[:instruction]
    if params[:save] # save button pressed
      build_instruction
      if @instruction.save
        session[:new_instruction_attrs] = nil
        redirect_to instruction_url(@instruction)
      else
        render :new
      end
    else
      redirect_to root_url
    end
  end

  def show
  end

  def edit
  end

  def update
    if @instruction.update_attributes(params[:instruction])
      if params[:view] # view button pressed
        redirect_to instruction_url(@instruction)
      else
        redirect_to edit_instruction_url(@instruction)
      end
    else
      render :edit
    end
  end

  private

  def build_instruction
    @instruction = @current_user.instructions.build(session[:new_instruction_attrs])
  end

  def find_instruction
    @instruction = @current_user.instructions.find(params[:id])
  end

end