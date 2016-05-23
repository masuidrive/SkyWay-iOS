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
  s.summary          = 'A short description of SkyWay.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/ToretaScreenSharing'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MASUI Yuichiro' => 'masui@masuidrive.jp' }
  s.source           = { :git => 'https://github.com/masuidrive/SkyWay-iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # s.ios.deployment_target = '8.0'

  s.source_files = 'SkyWay.framework/**/*.h'

  # s.resource_bundles = {
  #   'ToretaScreenSharing' => ['ToretaScreenSharing/Assets/*.png']
  # }
  s.frameworks          = %w(AudioToolbox AVFoundation CoreMedia CoreVideo VideoToolbox CoreGraphics Foundation GLKit SystemConfiguration)
  s.libraries = %w(c++ stdc++ sqlite3 icucore)
  s.vendored_frameworks = 'SkyWay.framework'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  #s.source_files = "SkyWay.framework/Headers/*.h"
  #s.public_header_files = 'SkyWay.framework/Versions/A/Headers/*.h'
  #s.compiler_flags      = "-ObjC"

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
