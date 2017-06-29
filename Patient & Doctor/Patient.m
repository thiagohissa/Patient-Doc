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
        _PREVIOUSLY_ACCEPTED = NO;
        _collectionOfPrescriptionsPATIENT = [NSMutableArray array];
    }
    return self;
}



-(void)getDoctorInfo:(Doctor*)doctor {
    
    NSLog(@"Doctor Name: %@ ",doctor.name);
    NSLog(@"Doctor Specialization: %@",doctor.specialization);
    
}



-(void)visitDoctor:(Doctor*)doctor{
    
    if(self.healthCard){
        self.PREVIOUSLY_ACCEPTED = YES;
        [doctor acceptPatient:self];
    }
    else{
        NSLog(@"Doctor cannot accept %@ because he/she does not have a health card", self.name);
    }
    
}


-(void)requestMedication:(Doctor*)doctor{
    if(self.PREVIOUSLY_ACCEPTED){
        [doctor getPrescriptions:self];
    }
    else{
        NSLog(@"You must visit the doctor first(Not previously accepted)");
    }
}



-(void)savePatientPrescriptions:(Patient*)patient andPrescription:(NSString*)string{
    
    [patient.collectionOfPrescriptionsPATIENT addObject:string];
 //   NSLog(@"Patient Prescription: %@", patient.collectionOfPrescriptionsPATIENT);
    
}





@end
