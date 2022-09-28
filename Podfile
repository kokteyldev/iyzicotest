# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'iyzicotest' do
  # Comment the next line if you don't want to use dynamic frameworks

platform :ios, '11.0'
  use_frameworks!

   pod 'iyzicoSDK', :git => 'https://github.com/iyzico/iyzico-podspecs.git', :branch => 'feature/objcSupport'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
   target.build_configurations.each do |config|
    config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
   end
  end
 end
