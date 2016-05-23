#
# Be sure to run `pod lib lint ToretaScreenSharing.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SkyWay'
  s.version          = '0.2.1'
  s.summary          = 'Unofficial SkyWay iOS SDK'
  s.description      = <<-DESC
WebRTC library
DESC

  s.homepage         = 'http://skyway.io/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MASUI Yuichiro (Unofficial Packager)' => 'masui@masuidrive.jp' }
  s.source           = { :git => 'https://github.com/masuidrive/SkyWay-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.public_header_files = 'SkyWay.framework/Versions/A/Headers/*.h'

  s.frameworks          = %w(AudioToolbox AVFoundation CoreMedia CoreVideo VideoToolbox CoreGraphics Foundation GLKit SystemConfiguration)
  s.libraries = %w(c++ stdc++ sqlite3 icucore)
  s.vendored_frameworks = 'SkyWay.framework'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.compiler_flags      = "-ObjC"

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
