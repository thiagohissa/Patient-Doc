//
//  Patient.m
//  Patient & Doctor
//
//  Created by Thiago Hissa on 2017-06-29.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString*)name andSpec:(NSInteger)age andHealthCard:(BOOL)HC
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _healthCard = HC;
    }
    return self;
}

@end
