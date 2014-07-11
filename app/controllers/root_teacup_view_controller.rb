class RootTeacupViewController < UIViewController
  include RandomColor

  stylesheet :brokerage

  attr_accessor :awesome_sub_controller, :action_button

  layout do
    self.action_button = subview(AwesomeButton.buttonWithType(UIButtonTypeRoundedRect), :test_button)
  end

  def viewDidLoad
    super

    self.action_button.setTitle('LoadNewController', forState:UIControlStateNormal)
    self.action_button.addTarget(self, action:'actionTapped', forControlEvents:UIControlEventTouchUpInside)
    self.action_button.frame = [[80, 284], [160, 40]]

    self.view.backgroundColor = randomColor()

    self.awesome_sub_controller = AwesomeSubController.new
  end


  def dealloc
    puts "dealloc: #{self.class}"

    super
  end

  def actionTapped
    UIApplication.sharedApplication.delegate.load_root_view_controller
  end

end