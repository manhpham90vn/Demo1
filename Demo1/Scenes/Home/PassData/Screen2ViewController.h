//
//  Screen2ViewController.h
//  Demo1
//
//  Created by Manh Pham on 6/13/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Screen2ViewControllerDelegate

-(void) didTappedBackButton:(NSString*_Nullable) value;

@end


@interface Screen2ViewController : UIViewController

@property (strong, nonatomic, nullable) NSString *value;
@property (weak, nonatomic, nullable) id<Screen2ViewControllerDelegate> delegate;

@end
