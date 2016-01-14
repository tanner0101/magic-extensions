#
# Be sure to run `pod lib lint MagicExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MagicExtensions"
  s.version          = "1.0.3"
  s.summary          = "Magic Swift standard library extensions."
  s.description      = "A collection of Swift standard library extensions that simplify common tasks."

  s.homepage         = "https://github.com/tannernelson/magic-extensions"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Tanner Nelson" => "tanner@bluebite.com" }
  s.source           = { :git => "https://github.com/tannernelson/magic-extensions.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/the_teet'
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MagicExtensions' => ['Pod/Assets/*.png']
  }
end
