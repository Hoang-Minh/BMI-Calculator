//
//  BMICalculatorViewController.h
//  BMICalculator
//
//  Created by Tri Vuong on 11-03-22.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kSwitchesSegmentIndex 0

@interface BMICalculatorViewController : UIViewController {
	UITextField *heightField;
	UITextField *weightField;
	UIButton *calculateButton;
	UISegmentedControl *unitSegment;
}

@property (nonatomic, retain) IBOutlet UITextField *heightField;
@property (nonatomic, retain) IBOutlet UITextField *weightField;
@property (nonatomic, retain) IBOutlet UIButton *calculateButton;
@property (nonatomic, readonly) IBOutlet UISegmentedControl *unitSegment;

- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)buttonPressed:(id)sender;

@end

