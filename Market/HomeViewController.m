//
//  HomeViewController.m
//  Market
//
//  Created by Phurbu Dolma on 6/29/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "HomeViewController.h"
#import "ProductViewController.h"


@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *HomeFeedScrollView;
@property (weak, nonatomic) IBOutlet UIScrollView *YahooScrollView;
- (IBAction)onProfileBtn:(id)sender;
- (IBAction)onYahooFilterButton:(id)sender;

@end

@implementation HomeViewController

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
    self.HomeFeedScrollView.
    contentSize =
    CGSizeMake(320,1105);
    
    self.YahooScrollView.
    contentSize =
    CGSizeMake(320,800);

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onProfileBtn:(id)sender {
    UIViewController *vc = [[ProductViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)onYahooFilterButton:(id)sender {
    if (self.HomeFeedScrollView.alpha == 0)
    {
        [UIView animateWithDuration:1 animations:^{
            self.HomeFeedScrollView.alpha = 1;
        }];
        

        
    } else {
        [UIView animateWithDuration:1 animations:^{
            self.HomeFeedScrollView.alpha = 0;
        }];
    
}
}
@end
