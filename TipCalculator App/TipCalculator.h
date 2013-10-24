//
//  TipCalculator.h
//  TipCalculator
//
//  Created by Mac on 13.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TipCalculator : NSObject

@property double invoiceAmount;
@property int amountOfPersons, tipInPercent;

-(double) getTipAmount;
-(double) getInvoiceAmountPerPerson;
-(double) getTipAmountPerPerson;

@end