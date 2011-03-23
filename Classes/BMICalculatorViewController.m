//
//  BMICalculatorViewController.m
//  BMICalculator
//
//  Created by Tri Vuong on 11-03-22.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BMICalculatorViewController.h"

@implementation BMICalculatorViewController
@synthesize heightField;
@synthesize weightField;
@synthesize calculateButton;
@synthesize unitSegment;

- (IBAction)backgroundTap:(id)sender {
	[heightField resignFirstResponder];
	[weightField resignFirstResponder];
}

- (IBAction)textFieldDoneEditing:(id)sender {
	[sender resignFirstResponder];
}

- (IBAction)buttonPressed:(id)sender {
	double height = [heightField.text doubleValue];
	double weight = [weightField.text doubleValue];
	double bmi = 0;
	
	if ([unitSegment selectedSegmentIndex] == 0) {
		bmi = (weight/(height*height));
	} else {
		bmi = (weight*4.88/(height*height));
	}
	
	NSLog(@"%d", [unitSegment selectedSegmentIndex]);
	
	NSString *msg = [[NSString alloc] initWithFormat:@"Your BMI is %f", bmi];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Result" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alert show];
	[alert release];
	[msg release];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.heightField = nil;
	self.weightField = nil;
	self.calculateButton = nil;
}


- (void)dealloc {
	[heightField release];
	[weightField release];
	[calculateButton release];
	[unitSegment release];
	[super dealloc];
}

@end
