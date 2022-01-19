Pod::Spec.new do |spec|

  spec.name         = "AppProtectionLib"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of AppProtectionLib."

  spec.description  = <<-DESC
  This pod helps in app protection.
                     DESC

  spec.homepage     = "https://github.com/skriyaz7/AppProtectionLib"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  
  spec.author             = "shaik riyaz"

  spec.platform     = :ios
  spec.ios.deployment_target = "12.1"

  spec.source       = { :git => "https://github.com/skriyaz7/AppProtectionLib.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "AppProtectionLib/*.{h,m,swift}"
  spec.exclude_files = "Classes/Exclude"

end
