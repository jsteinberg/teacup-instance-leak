class AppDelegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    load_root_view_controller

    true
  end


  def load_root_view_controller
    # @window.rootViewController = RootViewController.new
    @window.rootViewController = RootTeacupViewController.new
  end


end
