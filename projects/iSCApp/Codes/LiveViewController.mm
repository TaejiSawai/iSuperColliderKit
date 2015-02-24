//
//  LiveViewController.m
//  iSCApp
//
//  Created by Kengo Watanabe on 07/02/2015.
//  Copyright Watanabe-DENKI Inc. All rights reserved.
//

#import "LiveViewController.h"
#import <iSCKit.h>

@implementation LiveViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
	{

	}
	return self;
}

- (void) viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [iSC interpret:@"a = {SinOsc.ar()}.play"];
}

@end