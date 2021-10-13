Pod::Spec.new do |spec|

  spec.name         = "UControl"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/Moskwinow/UControl"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Maksym" => "maksym.vechirko@axiomc.com" }

  #spec.ios.deployment_target = "9.1"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/Moskwinow/UControl.git", :tag => "#{spec.version}" }
  spec.source_files  = "UControl/**/*.{h,m,swift}"

end
