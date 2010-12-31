require 'spec_helper'

describe Instruction do

  before { @i = Factory.build(:instruction) }

  describe "normalizations" do
    it { should normalize_attribute(:title) }
  end

  describe "validations" do
    context "with valid attributes" do
      it { @i.should be_valid }
    end

    context "when the title isn't present" do
      before { @i.title = ' ' }

      it { @i.should have(1).error_on(:title) }
    end
  end

  describe "assocations" do
    describe "#steps" do
      it "are empty when it has none" do
        @i.steps.should be_empty
      end

      context "with some steps" do
        before do
          @steps = (1..3).map { Factory(:step, :instruction => @i) }
          @steps[0].move_to_bottom
          @steps.each(&:reload)
        end

        it "returns them in order" do
          @i.steps.should eq([@steps[1], @steps[2], @steps[0]])
        end
      end
    end
  end

end
