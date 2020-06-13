//
//  DetailViewController.h
//  Demo1
//
//  Created by Manh Pham on 6/13/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetailViewControllerDelegate

-(void) didTappedBackButton:(NSString*_Nullable) value;

@end


@interface DetailViewController : UIViewController

@property (strong, nonatomic, nullable) NSString *value;
@property (weak, nonatomic, nullable) id<DetailViewControllerDelegate> delegate;

@end
