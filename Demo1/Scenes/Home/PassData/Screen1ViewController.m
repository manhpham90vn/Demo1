//
//  Screen1ViewController.m
//  Demo1
//
//  Created by Manh Pham on 6/13/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

#import "Screen1ViewController.h"

@interface Screen1ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *homeLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;

@end

@implementation Screen1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Screen 1";
}

- (IBAction)nextButtonTapped:(id)sender {
    NSString *value = self.inputTextField.text;
    Screen2ViewController *screen2ViewController = [[Screen2ViewController alloc] initWithNibName:@"Screen2ViewController" bundle:nil];
    screen2ViewController.value = value;
    screen2ViewController.delegate = self;
    [self.navigationController pushViewController:screen2ViewController animated:true];
}

- (void)didTappedBackButton:(NSString *)value {
    self.homeLabel.text = value;
}

@end
