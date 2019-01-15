//
//  ViewController.m
//  Address Book
//
//  Created by Markus on 2019-01-15.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *sparadData = [NSUserDefaults standardUserDefaults];
    NSArray *sparadeNamn = [sparadData objectForKey:@"names"];
    if (sparadeNamn) {
        self.names = [[NSMutableArray alloc] initWithArray:sparadeNamn];
        [self skrivUtAllaNamnen];
    } else {
        self.names = [NSMutableArray new]; // Kommer att fyllas med NSString-objekt
    }
}

- (IBAction)saveButtonPressed:(id)sender {
    NSString *newName = self.nameTextField.text;
    self.nameTextField.text = @"";
    [_names addObject:newName];
    
    // Nu vill jag spara alla namnen! - Hämta user defaults!
    NSUserDefaults *sparadData = [NSUserDefaults standardUserDefaults];
    [sparadData setObject:_names forKey:@"names"];
    
    [self skrivUtAllaNamnen];
}

- (void)skrivUtAllaNamnen {
    NSMutableString *mutableString = [NSMutableString new];
    for (NSString *name in _names) {
        [mutableString appendFormat:@"%@\n", name];
    }
    self.listOfNamesLabel.text = mutableString;
}

@end
