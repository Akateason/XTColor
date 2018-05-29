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


#import "XTColor+MyColors.h"

@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray *colors ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//  原有
    UIView *cusView1 = [UIView new] ;
    cusView1.backgroundColor = [UIColor xt_seedGreen] ;
    cusView1.frame = CGRectMake(100, 10, 100, 100) ;
    [self.view addSubview:cusView1] ;

//  自定义的 plist . bb
    [XTColor configCustomPlistName:@"MyColors"] ;
    self.view.backgroundColor = [XTColor xt_main] ;
    
//  自定义之后,依然能使用之前的.
    UIView *cusView = [UIView new] ;
    cusView.backgroundColor = [UIColor xt_red] ;
    cusView.frame = CGRectMake(10, 10, 100, 100) ;
    [self.view addSubview:cusView] ;
    
    
    
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
    
    UIColor *aColor = [UIColor colorBetweengGradientColor:UIColorHex(@"31a1f5") andColor:UIColorHex(@"1bff92") percent:.4] ;
    self.view.backgroundColor = aColor ;

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
