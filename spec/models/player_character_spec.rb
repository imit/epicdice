require 'spec_helper'

describe PlayerCharacter do
  before (:each) do
    @user = Factory(:user)
    @pc = Factory(:player_character)
  end
  
  
  it "user is there" do
    @user.should eq(@user)
  end
  
  
  it "should have a user" do 
    @pc.user
  end
  
  it "should have an inventory" do 
    @pc.inventory.should_not eq(nil)
  end
  
  
end