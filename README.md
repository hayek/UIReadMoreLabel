# UIReadMoreLabel
UIReadMoreLabel is an UILabel extention that supports truncation string for "read more" cases when the text is too large to fit the UILabel frame.

UIReadMoreLabel supports dynamic font size and attributed string values.

[![License](http://img.shields.io/packagist/l/doctrine/orm.svg)](http://cocoadocs.org/docsets/UIReadMoreLabel)
[![cocoapods](http://img.shields.io/cocoapods/v/UIReadMoreLabel.svg)](http://cocoadocs.org/docsets/UIReadMoreLabel)

![UIReadMoreLabel](https://github.com/hayek/UIReadMoreLabel/blob/master/UIReadMoreLabel/Screen%20Shot.png?raw=true)

## Usage
To use UIReadMoreLabel, create a UIReadMoreLabel programaticly or set a UILabel's class to UIReadMoreLabel in storyboard.


An example of making a UIReadMoreLabel:

```objective-c
UIReadMoreLabel *readMoreLabel = [[UIReadMoreLabel alloc] initWithFrame:self.view.bounds];
[readMoreLabel setTruncationString:@"... Continue Reading"];

[self.view addSubView:readMoreLabel];
```

There's also isTruncated property that will be set to YES in case the text was truncated.

## Installation
UIReadMoreLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod 'UIReadMoreLabel', '~> 1.2'
    
Or Manually add the two files into your Xcode project:

- UIReadMoreLabel.h
- UIReadMoreLabel.m

## How it works
UIReadMoreLabel sets the font to the minimum font size and removes characters till it fit in the frame, then replaces the last string with the truncationString.

## License
UIReadMoreLabel is licensed under the The MIT License (MIT) license found in the LICENSE file in the root directory of this source tree.