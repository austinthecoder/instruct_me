require 'spec_helper'

describe Command do

  before { @c = Factory.build(:command) }

  describe "assocations" do
    describe "#step" do
      context "with a valid step_id" do
        before do
          @step = Factory(:step)
          @c.step_id = @step.id
        end

        it "returns it" do
          @c.step.should eq(@step)
        end
      end
    end
  end

end
