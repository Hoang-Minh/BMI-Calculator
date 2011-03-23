//
//  BMICalculatorAppDelegate.h
//  BMICalculator
//
//  Created by Tri Vuong on 11-03-22.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BMICalculatorViewController;

@interface BMICalculatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BMICalculatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BMICalculatorViewController *viewController;

@end

