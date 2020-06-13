//
//  DetailViewController.m
//  Demo1
//
//  Created by Manh Pham on 6/13/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Detail";
    self.detailLabel.text = self.value;
}

- (IBAction)backButtonTapped:(id)sender {
    NSString *value = self.detailTextField.text;
    [self.delegate didTappedBackButton:value];
    [self.navigationController popViewControllerAnimated:true];
}

@end
