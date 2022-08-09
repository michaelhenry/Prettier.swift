Pod::Spec.new do |s|
  s.name             = 'Prettier.swift'
  s.version          = ENV['LIB_VERSION'] || '1.0'
  s.summary          = 'Prettier.io wrapper for swift. An opinionated code formatter.'

  s.description      = <<-DESC
Prettier.io wrapper for swift. An opinionated code formatter.
                       DESC

  s.homepage         = 'https://github.com/michaelhenry/Prettier.swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michael Henry Pantaleon' => 'me@iamkel.net' }
  s.source           = { :git => 'https://github.com/michaelhenry/Prettier.swift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/michaelhenry119'
  s.ios.deployment_target = '10.0'
  s.source_files = 'Sources/Prettier_swift/**/*.swift'
  s.resources = 'Sources/Prettier_swift/Resources/**/*'
end
