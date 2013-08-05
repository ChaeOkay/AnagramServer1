require 'spec_helper'

describe Word do

  let(:word) { Word.new }

  it "should exist" do
    word.is_a?(Word).should == true
  end

  it "should have a value of nil" do
    word.value.should == nil
  end

end
