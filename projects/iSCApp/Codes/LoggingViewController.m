//
//  LoggingViewController.m
//  iSCApp
//
//  Created by Kengo Watanabe on 07/02/2015.
//  Copyright Watanabe-DENKI Inc. All rights reserved.
//

#import "LoggingViewController.h"
#import <iSCKit/iSCKit.h>

@interface LoggingViewController ()

@end

@implementation LoggingViewController

- (void) viewDidLoad
{
    // use iSCKit Log View. it's controlled iSC Class.
    [self.view addSubview:[iSC sharedLogView]];
}


@end
