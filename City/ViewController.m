//
//  ViewController.m
//  City
//
//  Created by huanghuan on 16/4/7.
//  Copyright © 2016年 huanghuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableDictionary *_cityDict;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self readCityData];
    NSString *cityStr = @"长沙";
    NSString *city = [_cityDict objectForKey:cityStr];
    NSLog(@"%@的拼音是 :%@",cityStr,city);
}

-(void) readCityData{
    NSString *plistPatch = [[NSBundle mainBundle] pathForResource:@"City" ofType:@"plist"];
    _cityDict = [NSMutableDictionary dictionaryWithContentsOfFile:plistPatch];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
