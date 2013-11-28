//
//  ViewController.m
//  TipCalculator App
//
//  Created by Mac on 24.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Hide the keyboard
    self.modelConverter                 = [[ConvertModule alloc] init];
    self.invoiceAmount.delegate=self;
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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.invoiceAmount resignFirstResponder];
    
}

- (IBAction)check:(id)sender {
    
    self.invoiceAmount.text = [self.modelConverter substring:self.invoiceAmount.text];
    
}

- (IBAction)numberPersons:(UIStepper*)sender {
    if([self.numberOfPersons.text intValue] == 1 && (int)[sender value] < 1){
        return;
    }
    self.numberOfPersons.text = [NSString stringWithFormat:@"%i", (int)[sender value]];
}

- (IBAction)amountTip:(UIStepper*)sender {
    if([self.tipInPercent.text intValue] == 1 && (int)[sender value] < 1){
        return;
    }
    self.tipInPercent.text = [NSString stringWithFormat:@"%i", (int)[sender value]];
}

- (IBAction)calculate:(id)sender {
    
    self.modelConverter                 = [[ConvertModule alloc] initWithString: self.invoiceAmount.text];
    self.modelConverter.amountOfPersons = [self.numberOfPersons.text intValue];
    self.modelConverter.tipInPercent    = [self.tipInPercent.text intValue];
    
    /*
    self.amount.text                    = [self.modelConverter getInvoiceAmount];
    
    self.tipAmount.text                 = [self.modelConverter getTipAmount];
    
    self.tipAmountPerPerson.text        = [self.modelConverter getTipAmountPerPerson];
    
    self.amountPerPerson.text           = [self.modelConverter getInvoiceAmountPerPerson];
     */
    
    [self performSegueWithIdentifier:@"afterCalculation" sender:self];
}



@end
