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
    [_numberOfPersons setDelegate:self];
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
   _amount.text = self.numberOfPersons.text;
}
@end
