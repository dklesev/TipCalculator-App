//
//  ViewController.m
//  TipCalculator App
//
//  Created by Mac on 24.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import "ViewController.h"
#import "TipCalculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Hide the keyboard
    [_invoiceAmount setDelegate:self];
    [_numberOfPersons setDelegate:self];
    [_tipInPercent setDelegate:self];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)calculate:(id)sender {
    //@ToDo - make the calculations
    
    TipCalculator *tc   =   [[TipCalculator alloc]init];
    tc.invoiceAmount    =   [self.invoiceAmount.text doubleValue];
    tc.amountOfPersons  =   [self.numberOfPersons.text intValue];
    tc.tipInPercent     =   [self.tipInPercent.text intValue];
    
    _amount.text = [NSString stringWithFormat:@"%f",tc.invoiceAmount];
    _tipAmount.text = [NSString stringWithFormat:@"%f",tc.getTipAmount];
    _tipAmountPerPerson.text = [NSString stringWithFormat:@"%f",tc.getTipAmountPerPerson];
    _amountPerPerson.text = [NSString stringWithFormat:@"%f",tc.getInvoiceAmountPerPerson];
}



@end
