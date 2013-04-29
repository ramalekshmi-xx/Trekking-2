//
//  AppDelegate.h
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplashScreen.h"
#import "informationViewController.h"



@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>{
    NSTimer *m_splashscreenTimer;
    UINavigationController *m_navigationController;
    SplashScreen *m_splashViewcontroller;
    informationViewController *m_informationViewController;
    UITabBarController *m_tabBarController;



}

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;



-(void)splash;
-(void)information;


@end
