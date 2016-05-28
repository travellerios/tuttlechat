//
//  SplashSreenViewController.m
//  turtle
//
//  Created by Sandip Jadhav on 25/05/16.
//  Copyright © 2016 turtle. All rights reserved.
//

#import "SplashSreenViewController.h"
#import "LoginViewController.h"

@interface SplashSreenViewController ()
{
    NSTimer * timer;
    float progress;
    IBOutlet UIProgressView *progressBar;
    IBOutlet UIImageView *image;
}

@end

@implementation SplashSreenViewController

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden=YES;
    progress = 0 ;
    timer = [NSTimer scheduledTimerWithTimeInterval: 0.2
                                             target:self
                                           selector:@selector(targetMethod)
                                           userInfo:nil
                                            repeats:YES];
    progressBar.layer.cornerRadius=7;
    progressBar.clipsToBounds=YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    }
-(void)targetMethod{
    progress =progress + 0.1;
    if (progress>=1.0) {
        [timer invalidate];
        [self pushLoginView];
    }else{
        progressBar.progress = progress;
    }
}

-(void)pushLoginView{
    
        LoginViewController * loginVC =[self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
        [self.navigationController pushViewController:loginVC animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
