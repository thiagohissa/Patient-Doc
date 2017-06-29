//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Thiago Hissa on 2017-06-29.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) NSString* specialization;
- (instancetype)initWithName:(NSString*)name andSpec:(NSString*)spec;
@end
