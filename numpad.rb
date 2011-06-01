
class Numpad
  def initialize
    @keys = [[' '], [], ['a', 'b', 'c', '!'], ['d','e','f'], ['g', 'h', 'i'], ['j', 'k', 'l'],
    ['m', 'n', 'o'], ['p', 'q', 'r', 's'],
    ['t', 'u', 'v'], ['w', 'x', 'y', 'z']]
    @letter = -1
    @lastkey = nil
    @numkeys = 0
    @presses = 0
    @display = ''
  end
  
  def press(key)
    if @lastkey == key
      @presses += 1
    else
      flush
    end
    @lastkey = key
  end
  
  def flush
    @display += @keys[@lastkey][@presses] unless @lastkey.nil?
    @presses = 0
    @lastkey = nil
  end
  
  def pause
    flush
  end
  
  def read_display
    flush
    @display
  end
  
  def to_a
    (0..9).to_a
  end
  
  def include?(sentence)
    includes = true
    sentence.each do  |char|
      includechar = char.downcase
      includes = false if !@keys.include?(includechar)
    end
  end
  
end