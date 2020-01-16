#
# Be sure to run `pod lib lint MRLamePod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

preifx='Lame'
Pod::Spec.new do |s|
  s.name             = 'MRLamePod'
  s.version          = '3.100'
  s.summary          = 'A Pod Warper for Lame lib.'
  s.description      = <<-DESC
The pod managed iOS platform lame lib, and member of MRFFToolChain.
What's MRFFToolChain?
MRFFToolChain is buid for my ffmepg tutorial : https://github.com/debugly/StudyFFmpeg .
MRFFToolChain contain FFmpeg lib, Lame lib,X264 lib,Fdk-aac lib...
                       DESC

  s.homepage         = 'https://github.com/debugly/MRFFToolChainPod/'
  s.license          = { :type => 'MIT', :text => 'LICENSE' }
  s.author           = { 'qianlongxu' => 'qianlongxu@sohu-inc.com' }
  s.source           = { :http => "https://raw.githubusercontent.com/debugly/MRFFToolChainPod/master/#{s.name}-iOS-#{s.version}.zip" }
  s.ios.deployment_target = '8.0'
  
  s.ios.preserve_paths = "#{s.name}/iOS/#{preifx}-#{s.version}/include"
  s.ios.header_mappings_dir = "#{s.name}/iOS/#{preifx}-#{s.version}/include"
  s.ios.source_files = "#{s.name}/iOS/#{preifx}-#{s.version}/include/*.h"
  s.ios.vendored_libraries = "#{s.name}/iOS/#{preifx}-#{s.version}/lib/*.a"
  s.ios.public_header_files = "#{s.name}/iOS/#{preifx}-#{s.version}/include/**/*.h"

end
