#
# Be sure to run `pod lib lint WatchDogMainThread.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WatchDogMainThread'
  s.version          = '0.1.0'
  s.summary          = 'WatchDogMainThread detects UI Freeze'

  s.description      = <<-DESC
  WatchDogMainThread detects UI Freeze.
  You can set time interval when WatchDogMainThread considers UI Thread is blocked.
  Also you can provide handler for freeze event from WatchDogMainThread.
                       DESC

  s.homepage         = 'https://github.com/magenta-technology/WatchDogMainThread'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pavel Volkhin' => 'pavel.volhin@magenta-technology.com' }
  s.source           = { :git => 'https://github.com/magenta-technology/WatchDogMainThread.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'WatchDogMainThread/Classes/**/*.{m,h,swift}'
  s.swift_versions = ['4.2']
end
