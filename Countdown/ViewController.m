//
//  ViewController.m
//  Countdown
//
//  Created by Alessandro on 07/10/14.
//  Copyright (c) 2014 Alessandro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;
@property int accumulator;
@property BOOL isAdding;

@end

@implementation ViewController

- (IBAction) buttonPressed:(UIButton *)button{
	NSString *buttonText = [[button titleLabel] text];
	int inputNumber;
	int displayValue = [[self.displayLabel text] intValue];
	
	if ([buttonText isEqualToString:@"C"]) {
		self.isAdding = NO;
		self.displayLabel.text = @"";
		self.accumulator = 0;
	} else if ([buttonText isEqualToString:@"+"]){
		self.isAdding = YES;
		self.accumulator += displayValue;
		self.displayLabel.text = [NSString stringWithFormat:@"%d", self.accumulator];
	} else {
		inputNumber = [buttonText intValue];
		if ([self.displayLabel.text length] &&  displayValue == 0 && inputNumber == 0) {
			return;
		}
		if (self.isAdding) {
			self.displayLabel.text = @"";
		}
		self.displayLabel.text= [NSString stringWithFormat:@"%@%d", self.displayLabel.text, inputNumber];
		self.isAdding = NO;
	}
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.accumulator = 0;
	self.isAdding = NO;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
