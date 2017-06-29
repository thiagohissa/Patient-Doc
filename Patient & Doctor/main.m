//
//  main.m
//  Patient & Doctor
//
//  Created by Thiago Hissa on 2017-06-29.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {

    
    Doctor *doctor = [[Doctor alloc] initWithName:@"Doctor" andSpec:@"Plastic"];
    Patient *patient = [[Patient alloc] initWithName:@"Patient1" andSpec:22 andHealthCard:YES];
    
  //  [patient visitDoctor:doctor];
 //   [patient requestMedication:doctor];
    
    
    
    
    
    
    return 0;
}
