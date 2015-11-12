//
//  DEMOViewController.h
//  CreatesUiProgramatically
//
//  Created by Aditya on 13/11/13.
//  Copyright (c) 2013 Aditya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DEMOViewController : UIViewController


#pragma mark - Define UI Label, Buttons, Segments, ImageView, ScrollView
@property (nonatomic,retain) UILabel *headerLabel;
@property (nonatomic,retain) UIButton *sampleButton;
@property (nonatomic,retain) UISegmentedControl *segmentControl;
@property (nonatomic,retain) UIImageView *imageView;
@property (nonatomic,retain) UIScrollView *scrollView;


#pragma mark - Creating UI Label, Buttons, Segments, ImageView, ScrollView programmatically
-(void)createLabel;
-(void)createButton;
-(void)createsegment;
-(void)createImageView;
-(void)createScrollView;


#pragma mark - IBActions
-(IBAction)sampleBtAction;
-(IBAction)pushcgctrl:(id)sender;


@end
