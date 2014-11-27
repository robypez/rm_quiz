# -*- coding: utf-8 -*-
$:.unshift('/Library/RubyMotion/lib')
require 'motion/project/template/ios'
require 'bundler'
Bundler.require

# require 'bubble-wrap'

Motion::Project::App.setup do |app|

  app.name = 'quiz'
  app.identifier = 'com.your_domain_here.quiz'
  app.short_version = '0.1.0'
  app.version = app.short_version

  # SDK 8 for iOS 8 and above
  # app.sdk_version = '8.1'
  # app.deployment_target = '8.0'

  # SDK 8 for iOS 7 and above
  app.sdk_version = '8.1'
  app.deployment_target = '7.1'

  # Or for SDK 7
  # app.sdk_version = '7.1'
  # app.deployment_target = '7.0'

  app.icons = ["icon@2x.png", "icon-29@2x.png", "icon-40@2x.png", "icon-60@2x.png", "icon-76@2x.png", "icon-512@2x.png"]

  # prerendered_icon is only needed in iOS 6
  #app.prerendered_icon = true

  app.device_family = [:iphone, :ipad]
  app.interface_orientations = [:portrait, :landscape_left, :landscape_right, :portrait_upside_down]

  app.files += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))

  # Use `rake config' to see complete project settings, here are some examples:
  #
  # app.fonts = ['Oswald-Regular.ttf', 'FontAwesome.otf'] # These go in /resources
  # app.frameworks += %w(QuartzCore CoreGraphics MediaPlayer MessageUI CoreData)
  app.frameworks += [ 'CoreData' ]
  #
  # app.vendor_project('vendor/Flurry', :static)
  # app.vendor_project('vendor/DSLCalendarView', :static, :cflags => '-fobjc-arc') # Using arc
  #
  # app.pods do
  #   pod 'AFNetworking'
  #   pod 'SVProgressHUD'
  #   pod 'JMImageCache'
  # end
 
end
