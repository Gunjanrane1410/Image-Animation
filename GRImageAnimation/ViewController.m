//
//  ViewController.m
//  GRImageAnimation
//
//  Created by Student P_06 on 10/10/16.
//  Copyright © 2016 Gunjan Rane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





-(void)animatedUp
{
    [UIView animateWithDuration:0.5
delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y-100,self.ball.frame.size.width, self.ball.frame.size.height)];
} completion:^(BOOL finished) {
    if(finished){
        NSLog(@"Up Animation Finished");
    }
}];
}
-(void)animatedDownWithDuration:(NSTimeInterval)time
                          delay:(NSTimeInterval)delay
{
    [UIView animateWithDuration:0.5
                          delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                              [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y+100, self.ball.frame.size.width, self.ball.frame.size.height)];
                          } completion:^(BOOL finished) {
                              if(finished){
                                  NSLog(@"down Animation Finished");
                              }
                          }];
}
-(void)animatedWest
{
    [UIView animateWithDuration:0.5
                          delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                              [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
                          } completion:^(BOOL finished) {
                              if(finished){
                                  NSLog(@"west Animation Finished");
                              }
                          }];
}

-(void)animatedeast
{
    [UIView animateWithDuration:0.5
                          delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                              [self.ball setFrame:CGRectMake(self.ball.frame.origin.x+100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
                          } completion:^(BOOL finished) {
                              if(finished){
                                  NSLog(@"east Animation Finished");
                              }
                          }];
}
-(void)animatednorthwest
{
    [UIView animateWithDuration:0.5
                          delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                              [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y-100, self.ball.frame.size.width, self.ball.frame.size.height)];
                          } completion:^(BOOL finished) {
                              if(finished){
                                  NSLog(@"northwest Animation Finished");
                              }
                          }];
}
-(void)animatednortheast
{
    [UIView animateWithDuration:0.5
                          delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                              [self.ball setFrame:CGRectMake(self.ball.frame.origin.x+100, self.ball.frame.origin.y-100, self.ball.frame.size.width, self.ball.frame.size.height)];
                          } completion:^(BOOL finished) {
                              if(finished){
                                  NSLog(@"northeast Animation Finished");
                              }
                          }];
}
-(void)animatedsouthwest
{
    [UIView animateWithDuration:0.5
                          delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                              [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y+100, self.ball.frame.size.width, self.ball.frame.size.height)];
                          } completion:^(BOOL finished) {
                              if(finished){
                                  NSLog(@"southwest Animation Finished");
                              }
                          }];
}
-(void)animatedsoutheast
{
    [UIView animateWithDuration:0.5
                          delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                              [self.ball setFrame:CGRectMake(self.ball.frame.origin.x+100, self.ball.frame.origin.y+100, self.ball.frame.size.width, self.ball.frame.size.height)];
                          } completion:^(BOOL finished) {
                              if(finished){
                                  NSLog(@"southeast Animation Finished");
                              }
                          }];
}


- (IBAction)buttonAction:(id)sender {
    
    UIButton *button =sender;
    if(button.tag == 101){
        [self animatedUp];
    }
    else if (button.tag == 106){
        [self animatedDownWithDuration:0.5 delay:0.0];
    }
    else if (button.tag == 103){
        [self animatedWest];
    }
    else if (button.tag == 104){
        [self animatedeast];
    }
    else if (button.tag == 100){
        [self animatednorthwest];
    }
    else if (button.tag == 102){
        [self animatednortheast];
    }
    else if (button.tag == 105){
        [self animatedsouthwest];
    }
    else if (button.tag == 107){
        [self animatedsoutheast];
    }
        
}
-(void)animateZoomWithScaleSize:(CGFloat)scale{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.ball.transform = CGAffineTransformMakeScale(scale, scale);
    } completion:^(BOOL finished) {
        if(finished){
            NSLog(@"zoom animated");
        }
    }];
}

-(void)animatedWithSize:(CGFloat)size{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y,self.ball.frame.size.width+size, self.ball.frame.size.height+size)];
    } completion:^(BOOL finished) {
        if(finished){
            NSLog(@"zoom animated");
        }
    }];
}
- (IBAction)zoomInAction:(id)sender {
    [self animateZoomWithScaleSize:5];

}

- (IBAction)zoomOutAction:(id)sender {
    [self animateZoomWithScaleSize:0.5];
}








@end
