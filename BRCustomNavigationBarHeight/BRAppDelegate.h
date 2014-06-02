//
//  BRAppDelegate.h
//  BRCustomNavigationBarHeight
//
//  Created by Aaron Stephenson on 2/06/2014.
//  Copyright (c) 2014 Bronron Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
