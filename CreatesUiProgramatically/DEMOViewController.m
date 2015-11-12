//
//  DEMOViewController.m
//  CreatesUiProgramatically
//
//  Created by Aditya on 13/11/13.
//  Copyright (c) 2013 Aditya. All rights reserved.
//

#import "DEMOViewController.h"

@interface DEMOViewController ()

@end

@implementation DEMOViewController

-(IBAction)pushcgctrl:(id)sender{
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:

            //Label Change
            self.headerLabel.text = @"You click the TurnToTech Button";
            self.headerLabel.backgroundColor = [UIColor redColor];
            self.headerLabel.textColor = [UIColor blackColor];
            
            //Image Display
            self.imageView.image = [UIImage imageNamed:@"logo.png"];
            
            break;
            
        case 1:
            
            self.headerLabel.text = @"You click the Qcd Button";
            self.headerLabel.backgroundColor = [UIColor whiteColor];
            self.imageView.image = [UIImage imageNamed:@"qcd.jpg"];
            
             
            break;
            
        default:
            break;
    }
}

-(void)sampleBtAction
{
    self.headerLabel.text = @"User Click on dynamic Button";
    [self.imageView setImage:nil];
}


-(void)createsegment
{
    self.segmentControl = [[[UISegmentedControl alloc] initWithFrame:CGRectMake(15, 350, 320, 60) ] initWithItems:[NSArray arrayWithObjects:@"TurnToTech",@"Qcd", nil]];
    [self.segmentControl setBackgroundColor:[UIColor redColor]];
    
    [self.segmentControl addTarget:self action:@selector(pushcgctrl:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.segmentControl];
}

-(void)createLabel
{
    self.headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(500, 25, 320, 44)];
    self.headerLabel.font = [UIFont fontWithName:@"Futura" size:18];
    self.headerLabel.text = @"Created at TurnToTech LLC.";
    self.headerLabel.textColor = [UIColor blackColor];
    [self.view addSubview:self.headerLabel];
}

-(void)createButton
{
    self.sampleButton = [[UIButton alloc] initWithFrame:CGRectMake(5, 110, 150, 30)];
    [self.sampleButton setBackgroundColor:[UIColor blackColor]];
    [self.sampleButton setTitle:@"Dynamic Button" forState:UIControlStateNormal];
    [self.sampleButton addTarget:self action:@selector(sampleBtAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.sampleButton];
}

-(void)createImageView
{
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(400, 300, 107, 65) ];
    [self.view addSubview:self.imageView];

}

-(void)createScrollView
{
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(5, 450, 500, 300)];
    self.scrollView.backgroundColor = [UIColor redColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 400, 1000)];
    label.lineBreakMode = NSLineBreakByWordWrapping;
    label.numberOfLines = 0;
    
    NSMutableString *txt = [[NSMutableString alloc]init];
    
    for(int i=0;i<200;i++){
        [txt appendString:@"The quick brown fox jumps upon a lazy dog.\n "];
    }
    
    [label setText:txt];
    
    [self.scrollView addSubview:label];
    [self.scrollView setContentSize: label.frame.size ];
    
    [[self view] addSubview:self.scrollView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createLabel];
    [self createButton];
    [self createsegment];
    [self createImageView];
    [self createScrollView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
