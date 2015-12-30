#
#  Be sure to run `pod spec lint HackerNewsKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SFAdditions"
  s.version      = "1.0"
  s.summary      = "A useful collection of Objective-C categories for various Cocoa Touch frameworks."
  s.description  = <<-DESC
A useful collection of Objective-C categories for various Cocoa Touch frameworks.
DESC
  s.homepage     = "https://github.com/skyefreeman/SFAdditions"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Skye Freeman" => "skyefreeman@icloud.com" }
  s.social_media_url   = "http://twitter.com/ImSkyeFreeman"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/skyefreeman/SFAdditions.git", :tag => "1.0" }
  s.source_files  = "SFAdditions/*.{h,m}"
  s.public_header_files = "*.h"
  s.requires_arc = true
end
