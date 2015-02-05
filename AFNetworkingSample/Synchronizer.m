//
//  Synchronizer.m
//  AFNetworkingSample
//
//  Created by Diego Mazzone on 5/2/15.
//  Copyright (c) 2015 MundoMac. All rights reserved.
//

#import "Synchronizer.h"
#import "AFNetworking.h"

@implementation Synchronizer

- (void)getCountries
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    NSDictionary *parameters = @{};
    
    [manager GET:@"http://restcountries.eu/rest/v1/all"
       parameters:parameters
          success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
              NSLog(@"%@", responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
