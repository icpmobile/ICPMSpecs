#
# Be sure to run `pod lib lint HTToolsKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTToolsKit'
  s.version          = '0.1.7'
  s.summary          = 'ICP-Mobile 组件库之工具类组件 HTToolsKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/icpmobile/HTToolsKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lqve521' => 'lqve521@163.com' }
  s.source           = { :git => 'https://github.com/icpmobile/HTToolsKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#  s.source_files = 'HTToolsKit/Classes/**/*'

  # s.resource_bundles = {
  #   'HTToolsKit' => ['HTToolsKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'FCUUID' do |si|
    si.source_files = 'HTToolsKit/Classes/FCUUID'
  end
  
  s.subspec 'NormalDatabase' do |si|
      si.source_files = 'HTToolsKit/Classes/NormalDatabase'
      si.dependency 'HTModelKit'
  end
  
  s.subspec 'GCDHelper' do |si|
    si.source_files = 'HTToolsKit/Classes/GCDHelper'
  end
  
  
  s.subspec 'IPTool' do |si|
    si.source_files = 'HTToolsKit/Classes/IPTool'
  end
  
  s.subspec 'LKDBHelper' do |si|
    si.source_files = 'HTToolsKit/Classes/LKDBHelper'
    si.dependency 'LKDBHelper'
  end
  
  s.subspec 'Logger' do |si|
    si.source_files = 'HTToolsKit/Classes/Logger'
    si.dependency 'CocoaLumberjack'
  end
  
  s.subspec 'OtherHelper' do |si|
    si.source_files = 'HTToolsKit/Classes/OtherHelper'
    si.dependency 'MBProgressHUD'
  end
  
  s.subspec 'FileManager' do |si|
      si.source_files = 'HTToolsKit/Classes/FileManager'
      si.dependency 'HTToolsKit/NormalDatabase'
      si.dependency 'HTToolsKit/OtherHelper'
  end

  s.subspec 'Reachability' do |si|
    si.source_files = 'HTToolsKit/Classes/Reachability'
  end
  
  s.subspec 'FileDownloadOrUpload' do |si|
    si.source_files = 'HTToolsKit/Classes/FileDownloadOrUpload/**/*'
    si.dependency 'HTModelKit'
    si.dependency 'HTToolsKit/FileManager'
    si.dependency 'HTToolsKit/NormalDatabase'
    si.dependency 'HTToolsKit/OtherHelper'
    si.dependency 'MBProgressHUD'
  end
  
 
  
end
