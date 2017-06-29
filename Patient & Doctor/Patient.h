//
//  Patient.h
//  Patient & Doctor
//
//  Created by Thiago Hissa on 2017-06-29.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@class Doctor;

@interface Patient : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;
@property (nonatomic) BOOL healthCard;
@property (nonatomic) BOOL PREVIOUSLY_ACCEPTED;
- (instancetype)initWithName:(NSString*)name andSpec:(NSInteger)age andHealthCard:(BOOL)HC;

-(void)getDoctorInfo:(Doctor*)doctor;

-(void)visitDoctor:(Doctor *)doctor;

-(void)requestMedication:(Doctor*)doctor;

@end
