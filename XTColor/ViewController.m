//
//  ViewController.m
//  XTColor
//
//  Created by teason23 on 2018/2/24.
//  Copyright © 2018年 teason23. All rights reserved.
//

#import "ViewController.h"
#import "XTColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    原有
    self.view.backgroundColor = [UIColor xt_main] ;
    
    
//  自定义
//    NSString *plistPath = [[NSBundle bundleForClass:self.class] pathForResource:@"MyColors" ofType:@"plist"] ;
//    [[XTColorFetcher sharedInstance] configureCustomPlistWithFilePath:plistPath] ;
//    self.view.backgroundColor = [UIColor aabbccc] ;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
