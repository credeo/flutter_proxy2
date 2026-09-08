#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_proxy2.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_proxy2'
  s.version          = '0.0.1'
  s.summary          = 'Plugin for handling proxy connection'
  s.description      = <<-DESC
Plugin for handling proxy connection
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'flutter_proxy2/Sources/flutter_proxy2/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.resource_bundles = {
    'flutter_proxy2_privacy' => ['flutter_proxy2/Sources/flutter_proxy2/PrivacyInfo.xcprivacy']
  }
end
