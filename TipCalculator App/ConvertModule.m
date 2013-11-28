//
//  ConvertModule.m
//  TipCalculator App
//
//  Created by Mac on 20.11.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import "ConvertModule.h"

@implementation ConvertModule

- (id)initWithString:(NSString *)text{
    if(!([text rangeOfString:@"."].location == NSNotFound)){
        if([text substringFromIndex:[text rangeOfString:@"." options:NSBackwardsSearch].location + 1].length < 2){
            NSMutableString *add = [NSMutableString stringWithFormat:@"%@00", text];
            text = [self substring:add];
            NSLog(@"Text: %@", text);
        }
        self.invoiceAmount = [[text stringByReplacingOccurrencesOfString:@"." withString:@""] intValue];
    }else{
        self.invoiceAmount = [text intValue] * 100;
    }
    return self;
}

- (int)getCents: (int)value{
    return value % 100;
}

- (int)getEuros: (int)value{
    return value / 100;
}

- (NSString *) check: (int)value{
    if([self getCents:value]<10){
        return [self substring:
                [NSMutableString stringWithFormat:@"%d.0%d", [self getEuros: value], [self getCents:value]]];
    }else{
        return [self substring:
                [NSMutableString stringWithFormat:@"%d.%d", [self getEuros: value], [self getCents:value]]];
    }
}

- (NSString *) getTipAmount{
    int value = self.invoiceAmount * self.tipInPercent / 100;
    return [self check:value];
}

- (NSString *) getInvoiceAmountPerPerson{
    int value = self.invoiceAmount / self.amountOfPersons;
    return [self check:value];
}

- (NSString *) getTipAmountPerPerson{
    int value = (self.invoiceAmount * self.tipInPercent / 100) / self.amountOfPersons;
    return [self check:value];
}

- (NSString *) getInvoiceAmount{
    int value = self.invoiceAmount;
    return [self check:value];
}

- (NSString *) substring: (NSString *) value{
    if ([value rangeOfString:@"." options:NSBackwardsSearch].length > 0) {
        if ([value substringFromIndex:[value rangeOfString:@"." options:NSBackwardsSearch].location + 1].length > 2) {
            return [value substringToIndex:[value rangeOfString:@"." options:NSBackwardsSearch].location + 3];
        }
    }
    return value;
}

@end
