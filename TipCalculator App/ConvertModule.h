//
//  ConvertModule.h
//  TipCalculator App
//
//  Created by Mac on 20.11.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConvertModule : NSObject

@property int amountOfPersons, tipInPercent, invoiceAmount;

- (id)initWithString: (NSString *) text;

- (int)getCents: (int)value;

- (int)getEuros: (int)value;

- (NSString *) getTipAmount;

- (NSString *) getInvoiceAmountPerPerson;

- (NSString *) getTipAmountPerPerson;

- (NSString *) getInvoiceAmount;

- (NSString *) substring: (NSString *) value;

@end
