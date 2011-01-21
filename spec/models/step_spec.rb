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

  describe "assocations" do
    describe "#commands" do
      it "are empty when it has none" do
        @s.commands.should be_empty
      end

      context "with some commands" do
        before do
          @commands = (1..3).map { Factory(:command, :step => @s) }
          @commands[0].move_to_bottom
          @commands.each(&:reload)
        end

        it "returns them in order" do
          @s.commands.should eq([@commands[1], @commands[2], @commands[0]])
        end
      end
    end
  end

end