#
# Be sure to run `pod spec lint LKPFoundation.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "LKPFoundation"
  s.version      = "1.0"
  s.summary      = "iOS Utility Classes"
  s.description  = "Miscellaneous utilities and categories for iOS"
  s.homepage     = "https://github.com/lennypham/LKPFoundation"
  
  # Specify the authors of the library, with email addresses. You can often find
  # the email addresses of the authors by using the SCM log. E.g. $ git log
  #
  s.author       = { "Lenny Pham" => "http://www.lennypham.com" }
  
  # Specify the location from where the source should be retrieved.
  #
  s.source       = { :git => "https://github.com/lennypham/LKPFoundation.git" }


  # If this Pod runs only on iOS or OS X, then specify the platform and
  # the deployment target.
  #
  s.platform     = :ios, '6.0'

  # A list of file patterns which select the source files that should be
  # added to the Pods project. If the pattern is a directory then the
  # path will automatically have '*.{h,m,mm,c,cpp}' appended.
  #
  s.source_files = 'Classes', '**/*.{h,m}'
  
  s.requires_arc = true

end
