Pod::Spec.new do |s|
  
  s.name                  = "Evokly"
  s.summary               = "iOS library for Evokly beacon system."
  s.version               = "1.1.0"
  s.author                = { "Evokly S.A." => "info@evok.ly" }
  
  s.homepage              = "https://github.com/evokly/ios-sdk"
  s.documentation_url     = "https://github.com/evokly/ios-sdk"
  s.source                = { :git => "https://github.com/evokly/ios-sdk.git", :tag => s.version.to_s }
  s.license               = { :type => 'MIT', :file => 'LICENSE' }

  
  s.vendored_frameworks   = 'Evokly.framework'
  s.module_name           = 'Evokly'
  s.module_map            = 'Evokly.framework/Modules/module.modulemap'
  
  s.platform              = :ios
  s.ios.deployment_target = '8.0'
  s.frameworks            = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreLocation', 'CoreBluetooth'  
  s.xcconfig              = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Evokly"',
                               'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Evokly/Headers"' }

  
end
