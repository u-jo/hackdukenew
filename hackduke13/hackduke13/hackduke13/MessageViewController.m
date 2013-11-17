//
//  MessageViewController.m
//  hackduke13
//
//  Created by Lee Yu Zhou on 16/11/13.
//  Copyright (c) 2013 Felix Xiao. All rights reserved.
//

#import "MessageViewController.h"
#import "MapPostViewController.h"
@interface MessageViewController ()

@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic, strong) NSString *message;

@end

@implementation MessageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    return self;
}
- (IBAction)done:(id)sender {
    [self.textView resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}
- (IBAction)endEditting:(id)sender {
    [self.textView resignFirstResponder];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.textView.text =@"";
    self.textView.delegate = self;
}


- (void)textViewDidEndEditing:(UITextView *)textView
{
    [self.textView resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"postToMap"]) {
        if ([segue.destinationViewController isKindOfClass:[MapPostViewController class]]) {
            MapPostViewController *mpvc = (MapPostViewController *)segue.destinationViewController;
            mpvc.image = self.image;
            mpvc.message = self.textView.text;
        }
    }
}

@end
