

Pod::Spec.new do |s|



  s.name         = "XTColor"
  s.version      = "1.2.1"
  s.summary      = "XTColor color util for Objective-C ."


  s.homepage     = "https://github.com/Akateason/XTColor"
  
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "teason" => "akateason@qq.com" }
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "http://github.com/Akateason/XTColor.git", :tag => s.version }


  s.source_files  = "XTColor/color/*.{h,m}", "XTColor/color/theme/*.{h,m}"
  s.public_header_files = "XTColor/color/*.h", "XTColor/color/theme/*.h"
  s.dependency 'XTBase'


  s.resources = "XTColor/color/*.plist"

  
  
  

end
