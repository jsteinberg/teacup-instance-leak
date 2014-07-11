module RandomColor
  def randomColor
    hue = rand() #  0.0 to 1.0
    saturation = ( rand() * 256 % 128 ) + 0.5;  #  0.5 to 1.0, away from white
    brightness = ( rand() * 256 % 128 ) + 0.5;  #  0.5 to 1.0, away from black
    UIColor.colorWithHue(hue, saturation:saturation, brightness:brightness, alpha:1)
  end
end