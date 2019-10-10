Pod::Spec.new do |s|
  s.name             = 'Prettier.swift'
  s.version          = ENV['LIB_VERSION'] || '1.0'
  s.summary          = 'A swifty wrapper for the opinionated code formatter.'

  s.description      = <<-DESC
A swifty wrapper for the opinionated code formatter.
                       DESC

  s.homepage         = 'https://github.com/michaelhenry/Prettier.swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michael Henry Pantaleon' => 'me@iamkel.net' }
  s.source           = { :git => 'https://github.com/michaelhenry/Prettier.swift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/michaelhenry119'
  s.ios.deployment_target = '13.0'
  s.source_files = 'Prettier.swift/Classes/**/*'
  s.resources = 'Prettier.swift/Assets/**/*'
end
