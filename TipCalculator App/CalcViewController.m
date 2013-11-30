//
//  CalcViewController.m
//  TipCalculator App
//
//  Created by Mac on 28.11.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import "CalcViewController.h"

@interface CalcViewController ()
@property (weak, nonatomic) IBOutlet UILabel *amount;
@property (weak, nonatomic) IBOutlet UILabel *tipAmount;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountPerPerson;
@property (weak, nonatomic) IBOutlet UILabel *amountPerPerson;

@end

@implementation CalcViewController
@synthesize modelConverter = _modelConverter;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.amount.text                    = [self.modelConverter getInvoiceAmount];
    self.tipAmount.text                 = [self.modelConverter getTipAmount];
    self.tipAmountPerPerson.text        = [self.modelConverter getTipAmountPerPerson];
    self.amountPerPerson.text           = [self.modelConverter getInvoiceAmountPerPerson];
}

@end
