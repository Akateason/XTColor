//
//  ViewController.m
//  XTColor
//
//  Created by teason23 on 2018/2/24.
//  Copyright © 2018年 teason23. All rights reserved.
//

#import "ViewController.h"
#import "XTColor.h"
#import "ColorCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *colors ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    原有
    self.view.backgroundColor = [UIColor xt_red] ;
    
    
//  自定义
//    NSString *plistPath = [[NSBundle bundleForClass:self.class] pathForResource:@"MyColors" ofType:@"plist"] ;
//    [[XTColorFetcher sharedInstance] configureCustomPlistWithFilePath:plistPath] ;
//    self.view.backgroundColor = [UIColor aabbccc] ;
    
    self.collectionView.hidden = YES ;
//    float wid = [UIScreen mainScreen].bounds.size.width / 4 ;
//    float hei = 60 ;
//    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init] ;
//    layout.itemSize = CGSizeMake(wid, hei) ;
//    self.collectionView.collectionViewLayout = layout ;
//    self.collectionView.dataSource = self ;
//    self.collectionView.delegate = self ;
//
//    NSString *plistPath = [[NSBundle bundleForClass:XTColorFetcher.class] pathForResource:@"XTColors" ofType:@"plist"] ;
//    self.colors = [[[NSDictionary alloc] initWithContentsOfFile:plistPath] allKeys] ;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - UICollectionView

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.colors.count ;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ColorCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ColorCollectionViewCell" forIndexPath:indexPath] ;
    cell.backgroundColor = [[XTColorFetcher sharedInstance] xt_colorWithKey:self.colors[indexPath.row]] ;
    return cell ;
}


@end
