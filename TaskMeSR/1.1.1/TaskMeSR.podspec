Pod::Spec.new do |s|
  s.name             = 'TaskMeSR'
  s.version          = '1.1.1'
  s.summary          = 'PersonalTouch TaskMe SDK library in Swift w/ Obj-C support (SignalR)'
  s.description      = <<-DESC
The PersonalTouch TaskMe SDK provides a simple chat interface that works with custom SignalR chat server. The 
intent of the chat view is to offer a quick and easy way for customers and banking personnel to interact.
DESC
  s.homepage         = 'https://github.com/enrian/taskme-ios-pod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'BRH-Enrian' => 'brad.howes@enrian.com' }
  s.source           = { :git => 'https://github.com/enrian/taskme-signalr-ios.git', :tag => s.version.to_s }
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.source_files = 'TaskMe/*.swift'
  s.frameworks = 'UIKit'

  s.resource_bundles = {
    'TaskMeSR' => ['TaskMe/*.xib',
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

  s.dependency 'BRYXBanner', '~> 0.7'
  s.dependency 'CryptoSwift', '~> 0.6'
  s.dependency 'PKHUD', '~> 4.0'
  s.dependency 'Siesta', '~> 1.1'
  s.dependency 'SignalR-ObjC', '~> 2.0'
  s.dependency 'SwiftyJSON', '~> 3.1'
  s.dependency 'SwiftyTimer', '~> 2.0'
  
end
