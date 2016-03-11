//
//  ViewController.m
//  ColorLabel
//
//  Created by Alex on 16/3/11.
//  Copyright © 2016年 Alex. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+ColorText.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UILabel *deleteLineLabel;
@property (weak, nonatomic) IBOutlet UILabel *imageLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *testStr = @"200.99元";
  
    _textLabel.text = testStr;
    [_textLabel setTextColor:[UIColor orangeColor] rangeText:@"200.99" rangeFont:[UIFont systemFontOfSize:20.]];
    
    _deleteLineLabel.text = @"22.00元";
    _deleteLineLabel.textColor = [UIColor grayColor];
    [_deleteLineLabel setTextDeleteLine:[UIColor redColor] rangeText:@"22.00元"];
    
    _imageLabel.text = @"测试文字加表情,测试文字加表情,测试文字加表情,测试文字加表情,";
    [_imageLabel addImgAttachment:[UIImage imageNamed:@"001"] size:CGSizeMake(20, 20) range:NSMakeRange(5, 0)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
