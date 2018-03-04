//
//  ViewController.m
//  IBOutletsHW
//
//  Created by Ivan Kozaderov on 25.02.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    self.deskView.center = self.view.center;
  
}

-(UIColor*)randomColor{
    
    CGFloat r = (float)(arc4random()%256)/255;
    CGFloat g = (float)(arc4random()%256)/255;
    CGFloat b = (float)(arc4random()%256)/255;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    
    NSLog(@"rotation finished");
    
    UIColor* color = [self randomColor];
    
    for (UIView* view in self.blackRects) {
        
        view.backgroundColor = color;
        
        if (view.tag == 1) {    //White checker

            UIView* v = [view.subviews objectAtIndex:0];
            v.backgroundColor = arc4random_uniform(100)%2 ? [UIColor redColor]:[UIColor whiteColor];

        }
        else if (view.tag == 2){ //Red checker

            UIView* v = [view.subviews objectAtIndex:0];
            v.backgroundColor = arc4random_uniform(100)%2 ? [UIColor redColor]:[UIColor whiteColor];
     
        }
        
    }



  
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
