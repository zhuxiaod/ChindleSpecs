#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |spec|
  spec.name             = 'WechatSDK'
  spec.version          = '1.0.2'
  spec.summary          = 'WechatSDK for cocoapods'

  spec.homepage            = 'https://github.com/zhuxiaod/WechatSDK'
  spec.license          =   { :type => 'MIT', :file => 'LICENSE' }
  spec.author              = { 'zhuxiaod' => 'zhuxiaod_183202114@qq.com' }
  spec.source              = { :git => 'https://github.com/zhuxiaod/WechatSDK.git', :tag => spec.version.to_s }
  
  spec.platform = :ios
  spec.ios.deployment_target = '11.0'
  spec.static_framework = true
#  spec.requires_arc = true

  #spec.frameworks = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  #spec.libraries = 'iconv', 'sqlite3', 'c++', 'z'

  #spec.vendored_frameworks = '*.framework'
  spec.source_files = 'WechatSDK/*'
#  spec.resource = '*.a'
  
#  spec.vendored_library = 'WechatSDK/libWechatOpenSDK.a'
#  spec.vendored_libraries = 'libWechatOpenSDK.a'
  
  spec.pod_target_xcconfig = {
#    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
#    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/WechatSDK/',
#    'DEFINES_MODULE' => 'YES',
#    'VALID_ARCHS' => 'armv7 arm64'
  }
  spec.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }


end
