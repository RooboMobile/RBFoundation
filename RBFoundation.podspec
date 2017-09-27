
Pod::Spec.new do |s|
  s.name             = 'RBFoundation'
  s.version="1.0.0"
  s.summary          = 'RBFoundation'
  s.description      = 'Foundation'
  s.homepage         = 'https://github.com/RooboMobile/RBFoundation'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baxiang' => 'baxiang@roobo.com' }
  s.source           = { :git => 'https://github.com/RooboMobile/RBFoundation.git', :branch => 'master' }
  s.ios.deployment_target = '7.0'
  s.source_files = 'RBFoundation/*.{h,m}'
  s.public_header_files = 'RBFoundation/*.h'
  s.frameworks = 'Foundation'
end
