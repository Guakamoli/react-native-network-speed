require 'json'

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = 'RNNetworkSpeed'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/author/RNNetworkSpeed.git", :tag => "master" }
  s.source_files = "ios/**/*.{h,m,swift}"

  s.dependency "React-Core"
end

  