class Numpad
  
  def press(key)
    return unless @on
    @memory += key.to_s
  end
  
  def read_display
    return nil unless @on
    @memory
  end
  
  def turn_on
    @on = true
    @memory ||= ''
  end
  
end