//
//  ViewController.m
//  TimeZoneSample
//
//  Created by Vishal Gupta on 8/6/15.
//  Copyright (c) 2015 Vishal Gupta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDate *date = [NSDate date];
    NSDateFormatter * dateFormatter2 = [[NSDateFormatter alloc] init];
//    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"GMT"];
    [dateFormatter2 setTimeZone:[NSTimeZone localTimeZone]];
    [dateFormatter2 setDateFormat:@"yyyy-MM-dd 'T' HH:mm:ss 'Z' "];
    
    NSLog(@"%@",[dateFormatter2 stringFromDate:date]);
    
    NSDate *currentDateInUTC = [dateFormatter2 dateFromString:[dateFormatter2 stringFromDate:date]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
