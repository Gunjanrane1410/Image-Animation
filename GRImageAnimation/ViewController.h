//
//  ViewController.h
//  GRImageAnimation
//
//  Created by Student P_06 on 10/10/16.
//  Copyright © 2016 Gunjan Rane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *ball;
- (IBAction)buttonAction:(id)sender;
- (IBAction)zoomInAction:(id)sender;
- (IBAction)zoomOutAction:(id)sender;

@end

