require 'numpad'

describe Numpad do
  it "accepts key presses when turned off" do
    numpad = Numpad.new
    20.times do
      numpad.press(9)
    end
    numpad.read_display.should == nil
  end
  
  it "accepts key presses when turned on" do
    numpad = Numpad.new
    numpad.turn_on
    5.times do
      numpad.press(9)
    end
    numpad.read_display.should == '99999'
  end
end
