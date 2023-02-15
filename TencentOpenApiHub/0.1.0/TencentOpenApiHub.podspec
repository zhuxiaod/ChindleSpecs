#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TencentOpenApiHub'
  s.version          = '0.1.0'
  s.summary          = 'TencentOpenApiHub'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhuxiaod/TencentOpenApiHub'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhuxiaod' => 'zhuxiaod_183202114@qq.com' }
  s.source           = { :git => 'https://github.com/zhuxiaod/TencentOpenApiHub.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.swift_versions = '5.0'
    
  s.resource = 'TencentOpenApiHub/TencentOpenApi_IOS_Bundle.bundle'
  s.vendored_frameworks   = 'TencentOpenApiHub/TencentOpenAPI.framework'
  s.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.requires_arc          = true

end
