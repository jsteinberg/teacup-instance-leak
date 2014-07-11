class RootViewController < UIViewController
  include RandomColor

  attr_accessor :awesome_sub_controller, :action_button

  def viewDidLoad
    super

    self.action_button = AwesomeButton.buttonWithType(UIButtonTypeRoundedRect)
    self.action_button.setTitle('LoadNewController', forState:UIControlStateNormal)
    self.action_button.addTarget(self, action:'actionTapped', forControlEvents:UIControlEventTouchUpInside)
    self.action_button.frame = [[80, 284], [160, 40]]
    view.addSubview(self.action_button)

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