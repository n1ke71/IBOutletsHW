//
//  ViewController.h
//  IBOutletsHW
//
//  Created by Ivan Kozaderov on 25.02.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *deskView;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackRects;






@end

