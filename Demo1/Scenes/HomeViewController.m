//
//  HomeViewController.m
//  Demo1
//
//  Created by Manh Pham on 6/13/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *homeLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Home";
}

- (IBAction)nextButtonTapped:(id)sender {
    NSString *value = self.inputTextField.text;
    DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    detailViewController.value = value;
    detailViewController.delegate = self;
    [self.navigationController pushViewController:detailViewController animated:true];
}

- (void)didTappedBackButton:(NSString *)value {
    self.homeLabel.text = value;
}

@end
