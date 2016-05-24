#
# Be sure to run `pod lib lint ToretaScreenSharing.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = 'SkyWay'
  s.version = '0.2.1'
  s.summary = 'Unofficial SkyWay iOS SDK'
  s.description = <<-DESC
WebRTC library
DESC

  s.homepage = 'http://skyway.io/'
  s.license = { :type => 'MIT' }
  s.author = { 'MASUI Yuichiro (Unofficial Packager)' => 'masui@masuidrive.jp' }

  s.ios.deployment_target = '8.0'
  s.source = { http: "https://codeload.github.com/nttcom/SkyWay-iOS-SDK/zip/v#{s.version}" }
  s.prepare_command = "curl \"https://codeload.github.com/nttcom/SkyWay-iOS-SDK/tar.gz/v#{s.version}\" | tar xfz -"
  s.source_files = "SkyWay-iOS-SDK-#{s.version}/SkyWay.framework/Versions/A/Headers/*.h"
  s.public_header_files = "SkyWay-iOS-SDK-#{s.version}/SkyWay.framework/Versions/A/Headers/*.h"

  s.frameworks = %w(AudioToolbox AVFoundation CoreMedia CoreVideo VideoToolbox CoreGraphics Foundation GLKit SystemConfiguration)
  s.libraries = %w(c++ stdc++ sqlite3 icucore)
  s.vendored_frameworks = "SkyWay-iOS-SDK-#{s.version}/SkyWay.framework"
  s.pod_target_xcconfig = { ENABLE_BITCODE: 'NO' }
  s.compiler_flags = '-ObjC'
end
