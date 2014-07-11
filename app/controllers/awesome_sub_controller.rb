class AwesomeSubController < UIViewController

  def dealloc
    puts "dealloc: #{self.class}"

    super
  end

end