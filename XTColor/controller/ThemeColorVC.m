//
//  ThemeColorVC.m
//  XTColor
//
//  Created by teason23 on 2019/11/11.
//  Copyright © 2019 teason23. All rights reserved.
//

#import "ThemeColorVC.h"
#import "XTThemeConfig.h"

@interface ThemeColorVC ()
@property (weak, nonatomic) IBOutlet UIButton *bt;

@end

@implementation ThemeColorVC

- (IBAction)btOnClick:(id)sender {
    NSString *themeNew = ([[XTThemeConfig sharedInstance].currentThemeKey isEqualToString:@"default"]) ? @"dark" : @"default" ;
    [[XTThemeConfig sharedInstance] changeTheme:themeNew] ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        
    [[XTThemeConfig sharedInstance] setupDefaultTheme:@"default"] ;
    
    self.view.xt_theme_backgroundColor = @"bgColor" ;
    self.bt.xt_theme_backgroundColor = @"themeColor" ;
    self.bt.xt_theme_textColor = @"textColor" ;
}

@end
