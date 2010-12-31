require 'spec_helper'

describe ApplicationController do
  it { ApplicationController.superclass.should eq(ActionController::Base) }
end