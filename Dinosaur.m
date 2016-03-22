//
//  Dinosaur.m
//  AwesomelyFighters
//
//  Created by Matthew Bracamonte on 3/22/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "Dinosaur.h"

@implementation Dinosaur

-(instancetype) initWithName:(NSString *)name withDescription:(NSString *)description andImage:(UIImage *)dinosaurImage {
    
    self = [super init];
    if(self) {
        self.name = name;
        self.dinosaurDescription = description;
        self.dinosaurImage = dinosaurImage;
    }
    return self;
}


@end
