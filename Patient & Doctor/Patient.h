//
//  Patient.h
//  Patient & Doctor
//
//  Created by Thiago Hissa on 2017-06-29.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;
@property (nonatomic) BOOL healthCard;
- (instancetype)initWithName:(NSString*)name andSpec:(NSInteger)age andHealthCard:(BOOL)HC;
@end
