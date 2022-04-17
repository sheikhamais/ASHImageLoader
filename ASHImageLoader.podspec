#
# Be sure to run `pod lib lint ASHImageLoader.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASHImageLoader'
  s.version          = '1.0.0'
  s.summary          = 'This pod loads images into the image view and cache them'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The is a lightweight pod that provides a caching solution to the images that are downloaded from url for efficient performance.
The usage is quite simple:

Step 1: //in your file
import ASHImageLoader

Step 2: //can be used in following ways:

let imageUrl = "https://myImageUrl"
let myPlaceholderImage = UIImage(named: "myPlaceholderImage")

UIImageView(url: imageUrl)
UIImageView(url: imageUrl, placeholderImage: myPlaceholderImage)

&

let image = UIImage()

image.loadImage(fromUrl: imageUrl)
image.loadImage(fromUrl: imageUrl, placeholderImage: myPlaceholderImage)
                       DESC

  s.homepage         = 'https://github.com/sheikhamais/ASHImageLoader'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sheikhamais@gmail.com' => 'amais.sheih@tangenttek.com' }
  s.source           = { :git => 'https://github.com/sheikhamais/ASHImageLoader.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ASHImageLoader/Classes/**/*'
  
#  s.resources = 'ASHImageLoader/Assets/**'
  s.resource_bundles = {
    'ASHImageLoader' => ['ASHImageLoader/Assets/*.xcassets']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
