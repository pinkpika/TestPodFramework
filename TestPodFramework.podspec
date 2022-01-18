#
# Be sure to run `pod lib lint TestPodFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestPodFramework'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TestPodFramework.'

  s.description      = 'TestPodFramework'

  s.homepage         = 'https://github.com/pinkpika/TestPodFramework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'PinkPika' => 'tim801217@gmail.com' }
  s.source           = { :git => 'git@github.com:pinkpika/TestPodFramework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'TestPodFramework/TestPodFramework/Classes/**/*'
  
  s.resource_bundles = {
      'TestPodFramework' => ['TestPodFramework/TestPodFramework/Classes/**/*.{xib,storyboard}', 
      'TestPodFramework/TestPodFramework/Assets/*.xcassets'
      ]
  }

  s.swift_versions = ['4.2', '5.0', '5.1', '5.2', '5.3', '5.4']

  s.dependency 'Alamofire', '~> 5.4.4'
end
