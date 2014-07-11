teacup-instance-leak
====================

Simple app to display memory leak issues with teacup

There are two RootViewController implementations.  One uses teacup(RootTeacupViewController) and the other(RootViewController) does not.  

You can run the application using either by switching out which is commented out in the app_delegate.rb file.

The RootTeacupViewController leaks both instance variables.  The button seems to be leaked every time, where the controller is leaked most of the time, but seemingly randomly
