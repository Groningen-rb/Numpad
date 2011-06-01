require 'numpad'

describe Numpad do
  # it "accepts key presses when turned off" do
  #   @numpad = Numpad.new
  #   20.times do
  #     @numpad.press(9)
  #   end
  #   @numpad.read_display.should == nil
  # end
  before(:each) do
    @numpad = Numpad.new
  end
  
  it "displays numbers from 1 till 0" do
    @numpad.to_a.should == (0..9).to_a
  end
  
  it 'should display "a" after key 2 has been pressed once ' do 
    @numpad.press(2)
    @numpad.read_display.should == 'a'
  end

  it 'should display "d" after key 3 has been pressed once ' do 
    @numpad.press(3)
    @numpad.read_display.should == 'd'
  end

  it 'should display "b" after key 2 has been pressed twice ' do 
    @numpad.press(2)
    @numpad.press(2)
    @numpad.read_display.should == 'b'
  end
  
  it 'should display "!" after key 2 has been pressed four times ' do 
    @numpad.press(2)
    @numpad.press(2)
    @numpad.press(2)
    @numpad.press(2)
    @numpad.read_display.should == '!'
  end
  
  it 'should display "foz" after ... the correct keys for foz have been pressed' do
    3.times {@numpad.press(3)}
    3.times {@numpad.press(6)}
    4.times {@numpad.press(9)}
  end

  it 'should display daz after the correct seq has been pressed' do
    @numpad.press(3)
    @numpad.press(2)
    4.times {@numpad.press(9)}
    @numpad.read_display.should == 'daz'
  end

  it 'should display adz after the correct seq has been pressed' do
    @numpad.press(2)
    @numpad.press(3)
    4.times {@numpad.press(9)}
    @numpad.read_display.should == 'adz'
  end

  it 'should display adz after the correct seq has been pressed' do
    @numpad.press(2)
    @numpad.press(3)
    4.times {@numpad.press(9)}
    @numpad.read_display.should == 'adz'
  end
  
  it 'should display "" when the display is read immediately' do
    @numpad.read_display.should == ''  
  end
  
  it 'should display "aa" when the correct seq has been pressed' do
    @numpad.press(2)
    @numpad.pause
    @numpad.press(2)
    @numpad.read_display.should == 'aa'      
  end
  
  it 'should display "ow yeah!" after the correct seq' do
    3.times {@numpad.press(6)}
    @numpad.press(9)
    @numpad.press(0)
    3.times {@numpad.press(9)}
    2.times {@numpad.press(3)}
    @numpad.press(2)
    @numpad.pause
    4.times {@numpad.press(2)}
  end
  
  it 'should be able to display "Ivan Dmitrievich Malijkh"' do
    @numpad.should include("Ivan Dmitrievich Malijkh")
  end
  
  it 'should display "Groningen.rb"' do
    @numpad.press('*')
    @numpad.press(4)
    3.times {@numpad.press(7)}
    3.times {@numpad.press(6)}
    @numpad.pause
    2.times {@numpad.press(6)}
    3.times {@numpad.press(4)}
    2.times {@numpad.press(6)}
    @numpad.press(4)
    2.times {@numpad.press(3)}    
    2.times {@numpad.press(6)}
    2.times {@numpad.press(0)}
    3.times {@numpad.press(7)}
    2.times {@numpad.press(2)}
  end
end
