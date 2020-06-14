//
//  MainTabbarViewController.m
//  Demo1
//
//  Created by Manh Pham on 6/14/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

#import "MainTabbarViewController.h"

@interface MainTabbarViewController ()

@end

@implementation MainTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TopViewController *topViewController = [[TopViewController alloc] initWithNibName:@"TopViewController" bundle:nil];
    topViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"ic_home"] selectedImage:[UIImage imageNamed:@"ic_home_selected"]];
    UINavigationController *navTop = [[UINavigationController alloc] initWithRootViewController:topViewController];
    
    CartViewController *cartViewController = [[CartViewController alloc] initWithNibName:@"CartViewController" bundle:nil];
    cartViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Cart" image:[UIImage imageNamed:@"ic_cart"] selectedImage:[UIImage imageNamed:@"ic_cart_selected"]];
    UINavigationController *navCart = [[UINavigationController alloc] initWithRootViewController:cartViewController];

    
    self.viewControllers = [[NSArray alloc] initWithObjects:navTop, navCart, nil];
}

@end
