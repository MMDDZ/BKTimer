Pod::Spec.new do |spec|

  spec.name         = "BKTimer"
  spec.version      = "1.0.0"
  spec.summary      = "定时器"
  spec.homepage     = "https://github.com/MMDDZ/BKTimer"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.authors      = { "MMDDZ" => "694092596@qq.com" }
  spec.source       = { :git => "https://github.com/MMDDZ/BKTimer.git", :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.source_files = 'BKTimer/*.{h,m}'
  spec.public_header_files = 'BKTimer/*.h'

  spec.framework  = "UIKit"

end
