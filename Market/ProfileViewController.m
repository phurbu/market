//
//  ProfileViewController.m
//  Market
//
//  Created by Kaili An on 7/2/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *itemScrollView;
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@end

@implementation ProfileViewController

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
    self.itemScrollView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scrollViewDidScroll:(UIScrollView *)itemScrollView{
    
    NSLog(@"scroll view did scroll");
    self.userImageView.frame = CGRectMake(0, itemScrollView.contentOffset.y * -.5, self.userImageView.frame.size.width, self.userImageView.frame.size.height);
}
@end
