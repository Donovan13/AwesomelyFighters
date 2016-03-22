//
//  Dinosaur.m
//  AwesomelyFighters
//
//  Created by Matthew Bracamonte on 3/22/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "Dinosaur.h"

@implementation Dinosaur

-(instancetype) initWithName:(NSString *)name withDescription:(NSString *)dinosaurDescription withImage:(UIImage *)dinosaurImage andAttributes:(NSArray *)attributes {
    
    self = [super init];
    if(self) {
        self.name = name;
        self.dinosaurDescription = dinosaurDescription;
        self.dinosaurImage = dinosaurImage;
        self.attributes = attributes;
    }
    return self;
}


@end
