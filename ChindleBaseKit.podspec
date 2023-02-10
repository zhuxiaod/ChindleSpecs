#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ChindleBaseKit'
  s.version          = '0.1.2'
  s.summary          = 'A short description of ChindleBaseKit.'

  s.ios.deployment_target = '11.0'
  s.swift_versions = '5.3'


# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhuxiaod/ChindleBaseKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhuxiaod' => 'zhuxiaod_183202114@qq.com' }
  s.source           = { :git => 'https://github.com/zhuxiaod/ChindleBaseKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # s.ios.deployment_target = '10.0'

  s.source_files = 'ChindleBaseKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  # s.prefix_header_file = 'ChindleBaseKit/Classes/ChindleBaseKit.h'
  # s.prefix_header_file = false

  # s.public_header_files = 'ChindleBaseKit/Classes/ChindleBaseKit.h'
#  s.prefix_header_contents = '#import "ChindleBaseKit.h"'

  # s.prefix_header_contents = '#import <JXPagingView/JXPagerView.h>'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'MJRefresh'
  s.dependency 'LYEmptyView'
  s.dependency 'YYKit'
  s.dependency 'SVProgressHUD'

  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
end
