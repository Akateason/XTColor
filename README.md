# XTColor

Fetch color in plist with 0 line code .
Configure all colors in the custom plist .


## Example

To run the example project, clone the repo, and run directory.

## Requirements

`iOS 8.0` or later

## Installation

XTColor is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "XTColor"
```

## Useage
```objective-C
//  原有
UIView *cusView1 = [UIView new] ;
cusView1.backgroundColor = [UIColor xt_seedGreen] ;
cusView1.frame = CGRectMake(100, 10, 100, 100) ;
[self.view addSubview:cusView1] ;

//  自定义的 plist文件中的颜色 .
[XTColor configCustomPlistName:@"MyColors"] ;
self.view.backgroundColor = [XTColor xt_main] ;

//  自定义之后,依然能使用之前的.
UIView *cusView = [UIView new] ;
cusView.backgroundColor = [UIColor xt_red] ;
cusView.frame = CGRectMake(10, 10, 100, 100) ;
[self.view addSubview:cusView] ;

//  渐变色
UIColor *aColor = [UIColor colorBetweengGradientColor:UIColorHex(@"31a1f5") andColor:UIColorHex(@"1bff92") percent:.4] ;
self.view.backgroundColor = aColor ;

//  主题色
[[XTThemeConfig sharedInstance] setupDefaultTheme:@"default"] ;
self.view.xt_theme_backgroundColor = @"bgColor" ;
self.bt.xt_theme_backgroundColor = @"themeColor" ;
self.bt.xt_theme_textColor = @"textColor" ;
```
## Author

teason, akateason@qq.com

## License

XTColor is available under the MIT license. See the LICENSE file for more info.
