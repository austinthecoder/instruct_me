require 'spec_helper'

describe InstructionsController do

  it { InstructionsController.superclass.should eq(ApplicationController) }

  describe "collection actions" do
    describe "GET new" do
      before do
        @i = Instruction.new
        Instruction.stub!(:new => @i)
      end

      it "builds an instruction" do
        Instruction.should_receive(:new).with(no_args)
        get :new
      end

      it "assigns the instruction" do
        get :new
        assigns(:instruction).should eq(@i)
      end

      it "renders the new action" do
        get :new
        response.should render_template(:new)
      end
    end
  end

end