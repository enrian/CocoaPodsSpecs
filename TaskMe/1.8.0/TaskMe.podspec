#
# Be sure to run `pod lib lint taskme-ios-pod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TaskMe'
  s.version          = '1.8.0'
  s.summary          = 'PersonalTouch TaskMe SDK library in Swift w/ Obj-C support'
  s.description      = <<-DESC
The PersonalTouch TaskMe SDK provides a simple chat interface that works with Mattermost 3.5 servers. The intent
of the chat view is to offer a quick and easy way for customers and banking personnel to interact.
DESC

  s.homepage         = 'https://github.com/enrian/taskme-ios-pod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'BRH-Enrian' => 'brad.howes@enrian.com' }
  s.source           = { :git => 'https://github.com/enrian/taskme-ios-pod.git', :tag => s.version.to_s }
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.source_files = 'TaskMe/*.swift'

  s.resource_bundles = {
    'TaskMe' => ['TaskMe/*.xib',
                 'Resources/*.xcassets',
                 'Resources/*.storyboard',
                 'Resources/Settings.bundle',
                 'Resources/*.aiff'
                ]
  }

  s.resources = ['Resources/*.aiff']

  s.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS[config=Debug]' => '-D DEBUG'
  }

  s.frameworks = 'UIKit'
  s.dependency 'BRYXBanner', '~> 0.7'
  s.dependency 'CryptoSwift', '~> 0.6'
  s.dependency 'PKHUD', '~> 4.0'
  s.dependency 'Siesta', '~> 1.1'
  s.dependency 'Starscream', '~> 2.0'
  s.dependency 'SwiftyJSON', '~> 3.1'
  s.dependency 'SwiftyTimer', '~> 2.0'

end
