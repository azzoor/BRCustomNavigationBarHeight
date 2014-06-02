//
//  BRDetailViewController.h
//  BRCustomNavigationBarHeight
//
//  Created by Aaron Stephenson on 2/06/2014.
//  Copyright (c) 2014 Bronron Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
