require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name            = "react-native-sound-level"

  s.version         = package['version']
  s.summary         = package['description']
  s.description     = package['description']
  s.license         = package['license']
  s.author          = package['author']
  s.homepage        = package['homepage']

  s.platform        = :ios, "9.0"

  s.source          = { :git => package['repository']['url'] }
  s.source_files    = "ios/**/*.{h,m}"
  s.preserve_paths  = "**/*.js"
  s.requires_arc    = true
  s.dependency 'React'
end
