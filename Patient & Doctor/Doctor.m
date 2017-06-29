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
        _acceptedPatients = [NSMutableArray array];
    }
    return self;
}


-(void)acceptPatient:(Patient*)patient{
    
    [_acceptedPatients addObject:patient.name];
    
   // NSLog(@"Patient: %@",self.acceptedPatients);
}



-(void)getPrescriptions:(Patient*)patient{
    
    char input[255];
    NSLog(@"Enter patient disease: (cancer or headache) \n");
    fgets(input, 255, stdin);
    
    
    NSString *inputString = [NSString stringWithCString:input encoding: NSUTF8StringEncoding];
    [inputString stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    

    if([inputString containsString:@"cancer"]){
        NSLog(@"patient has cancer");
        [_collectionOfPrescriptions addObject:@"Cancer Prescription"];
        [patient savePatientPrescriptions:patient andPrescription:@"Cancer Prescription"];
    }
    
    else if([inputString containsString:@"headache"]){
        NSLog(@"patient has headache");
        [_collectionOfPrescriptions addObject:@"Headache Prescription"];
        [patient savePatientPrescriptions:patient andPrescription:@"Cancer Prescription"];
    }
    
    else{
        NSLog(@"incorrect input");
    }
    
    
    
}





@end
