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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
