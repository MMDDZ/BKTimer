Pod::Spec.new do |s|

  s.name         = "BKTimer"
  s.version      = "1.0.0"
  s.summary      = "定时器"
  s.homepage     = "https://github.com/MMDDZ/BKTimer"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "MMDDZ" => "694092596@qq.com" }
  s.source       = { :git => "https://github.com/MMDDZ/BKTimer.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'BKTimer/*.{h,m}'

  s.framework  = "UIKit"

end
