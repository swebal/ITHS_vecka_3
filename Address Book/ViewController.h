//
//  ViewController.h
//  Address Book
//
//  Created by Markus on 2019-01-15.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSString *dataKey;
}

// Data
@property (strong) NSMutableArray *people;

// IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *listOfNamesLabel;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField; // NY

- (IBAction)saveButtonPressed:(id)sender;

@end

