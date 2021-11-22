Pod::Spec.new do |s|
  s.name         = 'react-native-esc-pos-printer-ios-sdk'
  s.version      = '2.17.0'
  s.summary      = 'Epson ePOS_SDK_iOS for iOS'
  s.description  = <<-DESC
                    The Epson ePOS SDK for iOS is an SDK aimed at development engineers who 
                    are developing iOS applications for printing on an EPSON TM printer and 
                    an EPSON TM Intelligent printer.
                    Applications are developed using the APIs provided by Epson ePOS SDK.
                    Epson ePOS SDK for Android for Android devices is also provided in 
                    Epson ePOS SDK.
                    For detailed information, please see Epson ePOS SDK for iOS User's Manual.
                   DESC
  s.homepage     = 'https://download.epson-biz.com'
  s.platform     = :ios, '10.0'
  s.source       = { :git => 'https://github.com/tr3v3r/react-native-esc-pos-printer-ios-sdk.git', :tag => "#{s.version}" }
  s.source_files  = '*.h'
 
  s.frameworks = 'UIKit', 'CoreGraphics', 'ExternalAccessory'
  s.library   = 'epos2', 'z', 'xml2.2'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/epsonPrintSDK"' }


  s.source_files = "ios/**/*.{h,m,mm,swift}"
  # s.preserve_paths = 'libepos2.a'
  s.ios.vendored_libraries = "libepos2.a"
  s.libraries = "xml2.2"
  s.framework = "ExternalAccessory"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/react-native-esc-pos-printer-ios-sdk"' }
end