//
//  ScanResultViewController.m
//  LBXScanDemo
//
//  Created by lbxia on 15/11/17.
//  Copyright © 2015年 lbxia. All rights reserved.
//

#import "ScanResultViewController.h"

@interface ScanResultViewController ()

@property (strong, nonatomic) UIImageView *scanImg;
@property (strong, nonatomic) UILabel *labelScanText;
@property (strong, nonatomic) UILabel *labelScanCodeType;
@end

@implementation ScanResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _scanImg = [[UIImageView alloc]initWithFrame:CGRectMake(40, 20, self.view.frame.size.width - 80, 200)];
    [self.view addSubview:_scanImg];
    
    _labelScanText = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_scanImg.frame) + 20, self.view.frame.size.width, 40)];
    _labelScanText.textAlignment = NSTextAlignmentCenter;
    
    _labelScanCodeType = [[UILabel alloc]initWithFrame:CGRectMake(0,self.view.frame.size.height - 60, self.view.frame.size.width, 40)];
    _labelScanCodeType.textAlignment = NSTextAlignmentCenter;
    
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    

    if (!_imgScan) {
        
        _scanImg.backgroundColor = [UIColor grayColor];
    }

    _scanImg.image = _imgScan;
    _labelScanText.text = _strScan;
    _labelScanCodeType.text = [NSString stringWithFormat:@"码的类型:%@",_strCodeType];
}


@end
