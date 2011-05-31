require 'numpad'

describe Numpad do
  it "accepts key presses when turned off" do
    numpad = Numpad.new
    20.times do
      numpad.press(9)
    end
    numpad.read_display.should == nil
  end
end
