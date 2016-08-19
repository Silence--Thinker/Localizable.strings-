//
//  ViewController.m
//  Localizable语言国际化
//
//  Created by Silence on 16/8/19.
//  Copyright © 2016年 ___SILENCE___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // key: 是从 "Localizable.strings" 这个文件中读取对应的key-value值。
    // comment: 可以是nil，可以是一段为空的字符串，也可以是对key的注释,没有实际用处
    NSLog(@"%@", NSLocalizedString(@"name", @"一个名字"));
    
    
    // key: 是从名为 "tbl" 这个.strings文件中读取对应的key-value值。
    // tbl: 是一个名为 “tbl” 的.string文件
    // bundle: 资源bundle, nil默认是[main bundle],
    // comment: 可以是nil，可以是一段为空的字符串，也可以是对key的注释,没有实际用处
    NSLog(@"%@", NSLocalizedStringFromTableInBundle(@"name", @"Localizable", [NSBundle mainBundle], @"一个名字"));
    NSLog(@"%@", NSLocalizedStringFromTableInBundle(@"name", @"File", [NSBundle mainBundle], @"一个名字"));
    
    
    NSLog(@"%@", NSLocalizedStringWithDefaultValue(@"name2", @"File", [NSBundle mainBundle], @"这是个默认值", @"一个名字"));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
