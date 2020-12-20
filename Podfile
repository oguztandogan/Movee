# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
workspace 'Movee.xcworkspace'

target 'Movee' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  workspace 'Movee'
  use_frameworks!
  project 'Movee.xcodeproj'

  # Pods for Movee
pod 'Kingfisher', '~> 5.0'
pod 'SwiftKeychainWrapper'
pod 'Swinject'
pod 'Alamofire'
pod 'RxSwift'
pod 'SwinjectAutoregistration'
end

target 'MoveeComponents' do
   workspace 'Movee'
   project 'MoveeComponents/MoveeComponents.xcodeproj'
   use_frameworks!
end

target 'MoveeWebService' do
   workspace 'Movee'
   project 'MoveeWebService/MoveeWebService.xcodeproj'
   use_frameworks!
pod 'Alamofire'
pod 'RxSwift'

end


target 'Utilities' do
   workspace 'Movee'
   project 'Utilities/Utilities.xcodeproj'
   use_frameworks!
end

