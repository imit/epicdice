require 'spec_helper'

describe Inventory do
  before (:each) do
    @user = Factory(:user)
    @pc = Factory(:player_character)
    @item = Factory(:item)
  end
  
  
  it "should take an item" do 
    @pc.inventory.take_item(@item)
    @pc.inventory.items.should_not be_empty
  end
  
  it "should drop an item" do
   # @pc.inventory.take_item(@item)
   # @pc.inventory.drop_item(@item)
    #@pc.inventory.items.should be_empty
  end
  
  
  it "should equip an item" do
    @pc.inventory.equip(@item)
    @pc.inventory.find_item(@item)
  end
  
  it "should take gold" do
    
  end
  
  it "should calculate equipment stats" do
    
  end

  
  it "should buy item" do
    
  end
  
  it "should sell item" do
    
  end
  
  
end