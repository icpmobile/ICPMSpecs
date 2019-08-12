#
# Be sure to run `pod lib lint HTSelectKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTSelectKit'
  s.version          = '0.1.1'
  s.summary          = 'A short description of HTSelectKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://10.0.93.53:88/icp_mobile/icp_mobile_ios/HTSelectKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lisongyang' => 'lisongyang@hoteamsoft.com' }
  s.source           = { :git => 'http://10.0.93.53:88/icp_mobile/icp_mobile_ios/HTSelectKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'HTSelectKit/Classes/**/*'
  
#  s.resource_bundles = {
#    'HTSelectKit' => ['HTSelectKit/Assets/*.{png,xib}']
#  }
    s.subspec 'GeneralCell' do |ds|
        ds.source_files = 'HTSelectKit/Classes/GeneralCell/**/*'
        ds.dependency 'HTModelKit'
        ds.dependency 'HTCategoryKit/UIKit/UIColor'
        ds.dependency 'SDWebImage'
        ds.dependency 'SDAutoLayout'
    end

    s.subspec 'ShowImageVC' do |si|
        si.source_files = 'HTSelectKit/Classes/ShowImageVC'
        si.dependency 'SMAlertView'
        si.dependency 'HTToolsKit/FileDownloadOrUpload'
    end

    s.subspec 'ShowVC' do |svc|
        svc.source_files = 'HTSelectKit/Classes/ShowVC'
        svc.dependency 'SMAlertView'
        svc.dependency 'HTToolsKit/FileDownloadOrUpload'
    end

    s.subspec 'SViewVC' do |sv|
        sv.source_files = 'HTSelectKit/Classes/SViewVC'
        sv.dependency 'SMAlertView'
        sv.dependency 'HTBaseControlKit'
        sv.dependency 'HTToolsKit/FileDownloadOrUpload'
    end

    s.subspec 'Selection' do |cs|
        cs.source_files = 'HTSelectKit/Classes/Selection/**/*'
        cs.dependency 'HTSelectKit/GeneralCell'
        cs.dependency 'HTToolsKit/FileDownloadOrUpload'
        cs.dependency 'HTToolsKit/NormalDatabase'
        cs.dependency 'HTToolsKit/OtherHelper'
        cs.dependency 'HTBaseControlKit'
        cs.dependency 'HTMediatorKit/Common'
        cs.dependency 'HTMediatorKit/Target'
        cs.dependency 'HTModelKit'
        cs.dependency 'HTNetworkingKit'
        cs.dependency 'HTCategoryKit/MBProgressHUD'
        cs.dependency 'HTCategoryKit/UIKit/UIColor'
        cs.dependency 'HTUIKit/HTDownloadView'
        cs.dependency 'HTUIKit/LisztPageKit'
        cs.dependency 'MJRefresh'

        # 前期测试引入
        cs.dependency 'HTSelectKit/ShowImageVC'
        cs.dependency 'HTSelectKit/ShowVC'
        cs.dependency 'HTSelectKit/SViewVC'
        cs.resource_bundles = {
            'HTSelect' => ['HTSelectKit/Assets/*']
        }
    end

    s.subspec 'TargetSelect' do |ts|
        ts.source_files = 'HTSelectKit/Classes/Target_Select/*'
        ts.dependency 'HTSelectKit/Selection'
    end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
