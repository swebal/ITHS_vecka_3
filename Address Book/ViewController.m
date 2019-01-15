//
//  ViewController.m
//  Address Book
//
//  Created by Markus on 2019-01-15.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)saveButtonPressed:(id)sender {
    NSString *name = self.nameTextField.text;
    NSString *previousNames = self.listOfNamesLabel.text;
    self.listOfNamesLabel.text = [NSString stringWithFormat:@"%@\n%@", previousNames, name];
}

@end
