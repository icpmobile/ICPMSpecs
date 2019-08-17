#
# Be sure to run `pod lib lint HTAuditKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTAuditKit'
  s.version          = '0.1.1'
  s.summary          = 'A short description of HTAuditKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://10.0.93.53:88/icp_mobile/icp_mobile_ios/HTAuditKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JamesLiAndroid' => 'lisongyang@hoteamsoft.com' }
  s.source           = { :git => 'http://10.0.93.53:88/icp_mobile/icp_mobile_ios/HTAuditKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'HTAuditKit/Classes/**/*'
  
  #s.resource_bundles = {
  #    'HTAudit' => ['HTAuditKit/Assets/*']
  #}
  s.subspec 'HTAudit' do |sau|
      sau.source_files = 'HTAuditKit/Classes/HTAudit/**/*'
      sau.dependency 'HTModelKit/Api'
      sau.dependency 'HTModelKit/Settings'
      sau.dependency 'HTModelKit/Confige'
      sau.dependency 'HTModelKit/Notification'
      
      sau.dependency 'HTBaseControlKit'
      sau.dependency 'SDAutoLayout'
      # 关于引用修改的问题
      sau.dependency 'HTFileServerKit/Operation'
      sau.dependency 'HTFileServerKit/Manage'
      sau.dependency 'HTDataBaseKit/HTDBHelper'
      sau.dependency 'HTToolsKit/OtherHelper'
  
      sau.dependency 'HTNetworkingKit'
      sau.dependency 'HTCategoryKit/MBProgressHUD'
      sau.dependency 'HTCategoryKit/UIKit/UIColor'
      sau.dependency 'HTUIKit/LisztPageKit'
      sau.dependency 'HTUIKit/HTDownloadView'
      sau.dependency 'YBPopupMenu'
      
      sau.dependency 'HTTemplateKit/Api'
      
      
      sau.dependency 'HTCategoryKit/Foundation/NSString'
      sau.dependency 'HTMediatorKit/Common'
      sau.dependency 'HTMediatorKit/Target'
      
      sau.resource_bundles = {
          'HTAudit' => ['HTAuditKit/Assets/*']
      }
  end
  
  s.subspec 'TargetAudit' do |ta|
      ta.source_files = 'HTAuditKit/Classes/TargetAudit'
      ta.dependency 'HTAuditKit/HTAudit'
  end


  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
