#
# Be sure to run `pod lib lint HTBaseControlKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTBaseControlKit'
  s.version          = '0.1.1'
  s.summary          = 'ICP-Mobile项目 基础控件组件  HTBaseControlKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/icpmobile/HTBaseControlKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhanglianjiang' => 'zhanglianjaing@hoteamsoft.com' }
  s.source           = { :git => 'https://github.com/icpmobile/HTBaseControlKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  .h文件中需要引入第三方库的.h时 需要添加这句话
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

  
  s.source_files = 'HTBaseControlKit/Classes/**/*'
  
   s.resource_bundles = {
     'HTBaseControlKit' => ['HTBaseControlKit/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'HTUIKit/WRNavigationBar'

  s.dependency 'HTCategoryKit/UIKit/UIColor'
  
  
  
  
end
