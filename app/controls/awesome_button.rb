class AwesomeButton < UIButton

  def dealloc
    puts "dealloc: #{self.class}"

    super
  end

end