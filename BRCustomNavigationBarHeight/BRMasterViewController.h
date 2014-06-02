//
//  BRMasterViewController.h
//  BRCustomNavigationBarHeight
//
//  Created by Aaron Stephenson on 2/06/2014.
//  Copyright (c) 2014 Bronron Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BRDetailViewController;

#import <CoreData/CoreData.h>

@interface BRMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) BRDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
