class AppDelegate < PM::Delegate
  status_bar false, animation: :fade

  def on_load(app, options)
    open RootScreen.new(hide_nav_bar: true)
  end

  def application(application, willChangeStatusBarOrientation: new_orientation, duration: duration)
    # Manually set RMQ's orientation before the device is actually oriented
    # So that we can do stuff like style views before the rotation begins
    rmq.device.orientation = new_orientation
  end

end