//
//  Person.h
//  Address Book
//
//  Created by Markus on 2019-01-15.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong) NSString *name;
@property (strong) NSString *email;

- (id)initWithDictionary:(NSDictionary *)data;
- (NSDictionary *)dictionaryFromObject;

@end
