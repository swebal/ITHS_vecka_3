//
//  ViewController.m
//  Address Book
//
//  Created by Markus on 2019-01-15.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataKey = @"people";
    self.people = [NSMutableArray new];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *sparadePersoner = [[NSUserDefaults standardUserDefaults] arrayForKey:dataKey];
    if (sparadePersoner) {
        // För varje nsdictionary som vi har, måste vi skapa en Person (obj)
        for (NSDictionary *data in sparadePersoner) {
            Person *person = [[Person alloc] initWithDictionary:data];
            [self.people addObject:person];
        }
    }
    [self skrivUtAllaPersoner];
    [self.nameTextField becomeFirstResponder];
}

- (IBAction)saveButtonPressed:(id)sender {
    NSString *newName = self.nameTextField.text;
    self.nameTextField.text = @"";
    
    NSString *newEmail = self.emailTextField.text;
    self.emailTextField.text = @"";
    
    [self.nameTextField becomeFirstResponder];
    
    Person *newPerson = [Person new];
    newPerson.name = newName;
    newPerson.email = newEmail;
    [_people addObject:newPerson];
    
    [self saveData];
    [self skrivUtAllaPersoner];
}

- (void)saveData {
    NSMutableArray *dictionaryDataOnly = [NSMutableArray new];
    for (Person *person in _people) {
        NSDictionary *personData = [person dictionaryFromObject];
        [dictionaryDataOnly addObject:personData];
    }
    [[NSUserDefaults standardUserDefaults] setObject:dictionaryDataOnly forKey:dataKey];
}

- (void)skrivUtAllaPersoner {
    NSMutableString *mutableString = [NSMutableString new];
    for (Person *person in _people) {
        [mutableString appendFormat:@"%@, %@\n", person.name, person.email];
    }
    self.listOfNamesLabel.text = mutableString;
}

@end
