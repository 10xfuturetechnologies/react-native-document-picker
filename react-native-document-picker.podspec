require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name            = package['name']
  s.version         = package['version']
  s.summary         = package['description']
  s.license         = package['license']
  s.homepage        = package['homepage']
  s.authors         = { 'Elyx0' => 'elyx00@gmail.com' }
  s.source          = { :git => "https://github.com/10xfuturetechnologies/react-native-document-picker.git", :tag => "v#{s.version}" }
  s.source_files    = "ios/RNDocumentPicker/*.{h,m}"
  s.platform        = :ios, "8.0"
  s.dependency        'React'
end
