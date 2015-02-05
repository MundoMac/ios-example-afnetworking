//
//  ViewController.m
//  AFNetworkingSample
//
//  Created by Diego Mazzone on 5/2/15.
//  Copyright (c) 2015 MundoMac. All rights reserved.
//

#import "ViewController.h"
#import "Synchronizer.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)getCountries
{
    Synchronizer *sync = [Synchronizer new];
    [sync getCountries];
}

@end
