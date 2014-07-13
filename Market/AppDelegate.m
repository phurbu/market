//
//  AppDelegate.m
//  Market
//
//  Created by Phurbu Dolma on 6/29/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
<<<<<<< HEAD
#import "HomeViewController.h"
=======
>>>>>>> FETCH_HEAD
#import "MobileCoreServices/MobileCoreServices.h"
#import "AssetsLibrary/AssetsLibrary.h"
#import "CameraViewController.h"

<<<<<<< HEAD

=======
>>>>>>> FETCH_HEAD
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
<<<<<<< HEAD
    
    // Root should be login view.
    //LoginViewController *vc = [[LoginViewController alloc] init];
    //self.window.rootViewController = vc;
    
    HomeViewController *vc = [[HomeViewController alloc] init];
=======
    LoginViewController *vc = [[LoginViewController alloc] init];
>>>>>>> FETCH_HEAD
    self.window.rootViewController = vc;
    
    if([self isCameraAvailable]){
        NSLog(@"Camera is available.");
    }else{
        NSLog(@"Camera is not available");
    }
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//check if the camera is available
- (BOOL) isCameraAvailable {
    return [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
}

// check the camera support taking photos
- (BOOL) doesCameraSupportTakingPhotos{
    return [self cameraSupportsMedia:(__bridge NSString*)kUTTypeImage sourceType: UIImagePickerControllerSourceTypeCamera];
}

- (BOOL) cameraSupportsMedia :(NSString *) paramMediaType sourceType:(UIImagePickerControllerSourceType)paramSourceType{
    __block bool result = NO;
    if([paramMediaType length] == 0){
        NSLog(@"Medis type is empty");
        return NO;
    }
    NSArray *availableMediaTypes = [UIImagePickerController availableCaptureModesForCameraDevice:paramSourceType];
    [availableMediaTypes enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSString *mediaType = (NSString *)obj;
        if([mediaType isEqualToString:paramMediaType]){
            result =YES;
            *stop = YES;
        }
    }];
    
    return result;
    
}


@end
