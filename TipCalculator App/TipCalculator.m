//
//  TipCalculator.m
//  TipCalculator
//
//  Created by Mac on 13.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import "TipCalculator.h"

@implementation TipCalculator

-(double) getTipAmount{
    return self.invoiceAmount * self.tipInPercent / 100;
}
-(double) getInvoiceAmountPerPerson{
    return self.invoiceAmount / self.amountOfPersons;
}
-(double) getTipAmountPerPerson{
    return self.getTipAmount / self.amountOfPersons;
}

@end