$:.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'speed'
include Speed
 
describe "Speed" do
  before(:each) do
    timer(:test) do
      sleep(1)
    end
  end
  
  it "Should time the block" do
    speed.should_not be_nil
  end
  
  it "should return the timed results in a hash" do
    speed.class.should == Hash
  end
end