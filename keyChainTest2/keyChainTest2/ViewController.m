//
//  ViewController.m
//  keyChainTest2
//
//  Created by 通拓科技 on 16/4/25.
//  Copyright © 2016年 tomtop. All rights reserved.
//

#import "ViewController.h"
#import "CHKeychain.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)getAccount:(id)sender {
    
    NSMutableDictionary *usernamepasswordKVPairs = (NSMutableDictionary *)[CHKeychain load:@"Account"];
    
    [self.userName setText:[NSString stringWithFormat:@"%@",[usernamepasswordKVPairs objectForKey:@"userName"]]];
    [self.passWord setText:[NSString stringWithFormat:@"%@",[usernamepasswordKVPairs objectForKey:@"passWord"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
