//
//  CameraViewController.m
//  Market
//
//  Created by Kaili An on 7/2/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "CameraViewController.h"
#import "MobileCoreServices/MobileCoreServices.h"


@interface CameraViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
- (IBAction)onCamera:(id)sender;
- (BOOL) isCameraAvailable;
- (BOOL) doesCameraSupportTakingPhotos;

@end

@implementation CameraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCamera:(id)sender {
    
    //call isCameraDeviceAvailable method
//    if(){
//        NSLog(@"Camera is available");
//    }
//    else{
//        NSLog(@"Camera is not available");
//    }
    
    
    
}
//
////method to check if the camera is available or not
//- (BOOL)isCameraDeviceAvailable:(UIImagePickerControllerCameraDevice)cameraDevice{
//    return [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
//}


- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    static BOOL beenHereBefore = NO;
    if(beenHereBefore){
        return;
    }
    else{
        beenHereBefore = YES;
    }
    
    if([self isCameraAvailable] && [self doesCameraSupportTakingPhotos])
    {
        UIImagePickerController *controller = [[UIImagePickerController alloc]init];
    
    controller.sourceType = UIImagePickerControllerSourceTypeCamera;
        NSString *requiredMediaType = (__bridge NSString *)kUTTypeImage;
        controller.mediaTypes = [[NSArray alloc] initWithObjects:requiredMediaType, nil];
        controller.allowsEditing = YES;
        controller.delegate = self;
        [self presentViewController: controller animated:YES completion: nil];
    }
    else{
        NSLog(@"Camera is not available.");
    }
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    NSLog(@"Picker retuned successfully.");
    
    NSLog(@"%@", info);
    NSString *mediaType = info[UIImagePickerControllerMediaType];
    
    if([mediaType isEqualToString:(__bridge NSString*)kUTTypeMovie]){
        
        NSURL *urlOfVideo = info[UIImagePickerControllerMediaURL];
        NSLog(@"Video URL = %@", urlOfVideo);
        
    }
}
@end
