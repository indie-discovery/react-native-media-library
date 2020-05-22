require 'json'

package = JSON.parse(File.read(File.join(__dir__, '..', 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-media-library'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = "https://github.com/indie-discovery/react-native-media-library"
  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/indie-discovery/react-native-media-library.git", :tag => "v#{s.version}" }
  s.source_files   = 'MediaLibrary/**/*.{h,m}'
 
  s.dependency 'React'
end
