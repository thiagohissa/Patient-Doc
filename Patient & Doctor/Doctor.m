//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Thiago Hissa on 2017-06-29.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString*)name andSpec:(NSString*)spec
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = spec;
    }
    return self;
}


-(void)acceptPatient:(Patient*)patient{
    
}





@end
