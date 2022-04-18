# ASHImageLoader

[![CI Status](https://img.shields.io/travis/sheikhamais@gmail.com/ASHImageLoader.svg?style=flat)](https://travis-ci.org/sheikhamais@gmail.com/ASHImageLoader)
[![Version](https://img.shields.io/cocoapods/v/ASHImageLoader.svg?style=flat)](https://cocoapods.org/pods/ASHImageLoader)
[![License](https://img.shields.io/cocoapods/l/ASHImageLoader.svg?style=flat)](https://cocoapods.org/pods/ASHImageLoader)
[![Platform](https://img.shields.io/cocoapods/p/ASHImageLoader.svg?style=flat)](https://cocoapods.org/pods/ASHImageLoader)


## Requirements

Requires iOS >= 9


## Installation

ASHImageLoader is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ASHImageLoader'
```

## Usage

To use this pod:

### Step 1:
#### import ASHImageLoader

### Step 2:
//use in following ways:

let image = UIImage()\
let imageUrl = "https://myImageUrl" \
let myPlaceholderImage = UIImage(named: "myPlaceholderImage")\

## (1)
### UIImageView(url: imageUrl)
### UIImageView(url: imageUrl, placeholderImage: myPlaceholderImage)

## (2)
### image.loadImage(fromUrl: imageUrl)
### image.loadImage(fromUrl: imageUrl, placeholderImage: myPlaceholderImage)


## Description

The is a lightweight pod that provides a caching solution to the images that are downloaded from url for efficient performance.


## Author

Amais Sheikh \
sheikhamais@gmail.com


## License

ASHImageLoader is available under the MIT license. See the LICENSE file for more info.
