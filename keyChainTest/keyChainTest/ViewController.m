//
//  ViewController.m
//  keyChainTest
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

- (IBAction)save:(id)sender {
    
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:self.userName.text forKey:@"userName"];
    [usernamepasswordKVPairs setObject:self.passWord.text forKey:@"passWord"];
    [CHKeychain save:@"Account" data:usernamepasswordKVPairs];
}

- (IBAction)delete:(id)sender {
    
    [CHKeychain delete:@"Account"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
