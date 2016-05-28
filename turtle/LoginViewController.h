//
//  LoginViewController.h
//  turtle
//
//  Created by Sandip Jadhav on 25/05/16.
//  Copyright © 2016 turtle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldValidator.h"



@interface LoginViewController : UIViewController
{
    IBOutlet TextFieldValidator *userNameTextField;
  IBOutlet TextFieldValidator *txtPass;
   IBOutlet TextFieldValidator *txtEmail;
}
@property (strong, nonatomic) IBOutlet UIButton *forgetPass;
@property (strong, nonatomic) IBOutlet UIButton *signupclick;

@end
