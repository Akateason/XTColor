

Pod::Spec.new do |s|



  s.name         = "XTColor"
  s.version      = "1.1.0"
  s.summary      = "XTColor color util for Objective-C ."


  s.homepage     = "https://github.com/Akateason/XTColor"
  
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "teason" => "akateason@qq.com" }
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/Akateason/XTColor.git", :tag => s.version }


  s.source_files  = "XTColor/color/*.{h,m}"
  s.public_header_files = "XTColor/color/*.h"
  s.dependency = "XTBase"

  s.resources = "XTColor/color/*.plist"

  
  
  

end
