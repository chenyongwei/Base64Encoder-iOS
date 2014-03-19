//
//  ViewController.m
//  Base64Encoder-iOS
//
//  Created by Yongwei on 3/19/14.
//  Copyright (c) 2014 Yongwei. All rights reserved.
//

#import "ViewController.h"
#import "Base64Encoder.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UITextView *rawTextView;
@property (nonatomic, strong) IBOutlet UITextView *encodedTextView;

-(IBAction)encode;
-(IBAction)decode;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)encode
{
    self.encodedTextView.text = [Base64Encoder encode:self.rawTextView.text];
}

-(void)decode
{
    self.rawTextView.text = [Base64Encoder decode:self.encodedTextView.text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
