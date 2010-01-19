$:.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'speed'
 
describe "Speed" do
  before(:each) do
    module Test
      include Speed
    end
    
    Test.timer(:test) do
      sleep(1)
    end
  end
  it "Should time the block" do
    Test.speed.should_not be_nil
  end
  
  it "should return the timed results in a hash" do
    Test.speed.class.should == Hash
  end
end