require 'spec_helper'

describe Step do

  before { @s = Factory.build(:step) }

  describe "assocations" do
    describe "#instruction" do
      context "with a valid instruction_id" do
        before do
          @instruction = Factory(:instruction)
          @s.instruction_id = @instruction.id
        end

        it "returns it" do
          @s.instruction.should eq(@instruction)
        end
      end
    end
  end

end