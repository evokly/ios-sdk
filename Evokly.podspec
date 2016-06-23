Pod::Spec.new do |s|
  s.name         = "Evokly"
  s.version      = "1.0.0"
  s.summary      = "iOS library for Evokly system."
  s.homepage     = "http://evok.ly"
  s.author       = { "Evokly Sp. z o.o" => "info@evok.ly" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/evokly/ios-sdk.git", :tag => "1.0.0" }
  s.source_files =  'Evokly.framework/Headers/*.h'
  s.vendored_frameworks = 'Evokly.framework'
  s.ios.deployment_target = '8.0'
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'MobileCoreServices', 'CoreLocation', 'CoreBluetooth'
  s.requires_arc = true
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Evokly"',
                   'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Evokly/Headers"' }
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2016 Evokly Sp. z o.o. All rights reserved.
      LICENSE
  }
end
