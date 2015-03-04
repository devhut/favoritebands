//  AppDelegate.m
//  FavoriteBands
//  Created by Dan Lopez on 3/3/15.
//  Copyright (c) 2015 DevHut. All rights reserved.

#import "AppDelegate.h"
#import "BandsTableViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSDictionary *gunsNRoses = @{@"photo" : @"gnr.png",
                               @"members" : @[@"Axl Rose", @"Slash", @"Izzy Stradlin", @"Steven Adler", @"Duff McKagan"]};
    
    NSDictionary *motleyCrue = @{@"photo" : @"motley.png",
                               @"members" : @[@"Vince Neal", @"Nikki Sixx", @"Mick Mars", @"Tommy Lee"]};
    
    NSDictionary *aerosmith = @{@"photo" : @"aerosmith.png",
                              @"members" : @[@"Steven Tyler", @"Joe Perry", @"Tom Hamilton", @"Brad Whitford", @"Joey Kramer"]};
    
    NSDictionary *beeGees = @{@"photo" : @"beegees.png",
                            @"members" : @[@"Barry Gibb", @"Robin Gibb", @"Maurice Gibb"]};
    
    NSDictionary *miscArtists = @{@"photo" : @"jimi,png",
                                @"members" : @[@"Prince", @"Jimi Hendrix", @"Tupac", @"Biggie"]};
    
    NSDictionary *theBands = @{@"Guns N' Roses" : gunsNRoses,
                                 @"Motley Crue" : motleyCrue,
                                   @"Aerosmith" : aerosmith,
                                    @"Bee Gees" : beeGees,
                                @"Misc Artists" : miscArtists};
    
    UINavigationController *navController = (UINavigationController*)self.window.rootViewController;
    BandsTableViewController *bandsVC = navController.viewControllers[0];
    bandsVC.allBands = theBands;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
