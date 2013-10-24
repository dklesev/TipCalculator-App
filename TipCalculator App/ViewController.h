//
//  ViewController.h
//  TipCalculator App
//
//  Created by Mac on 24.10.13.
//  Copyright (c) 2013 macVM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *invoiceAmount;
@property (weak, nonatomic) IBOutlet UITextField *numberOfPersons;
@property (weak, nonatomic) IBOutlet UITextField *tipInPercent;
@property (weak, nonatomic) IBOutlet UILabel *amount;
@property (weak, nonatomic) IBOutlet UILabel *tipAmount;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountPerPerson;
@property (weak, nonatomic) IBOutlet UILabel *amountPerPerson;

- (IBAction)calculate:(id)sender;

-(BOOL) textFieldShouldReturn:(UITextField *)textField;

@end
