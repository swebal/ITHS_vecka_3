//
//  Person.m
//  Address Book
//
//  Created by Markus on 2019-01-15.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithDictionary:(NSDictionary *)data {
    self = [super init];
    if (self) {
        self.name = data[@"name"];
        self.email = data[@"email"];
    }
    return self;
}

- (NSDictionary *)dictionaryFromObject {
    return @{@"name":_name, @"email":_email};
}

@end
