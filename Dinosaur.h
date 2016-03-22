//
//  Dinosaur.h
//  AwesomelyFighters
//
//  Created by Matthew Bracamonte on 3/22/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Dinosaur : NSObject

@property NSString *name;
@property UIImage *dinosaurImage;
@property NSString *dinosaurDescription;

-(instancetype) initWithName:(NSString *)name withDescription:(NSString *)dinosaurDescription andImage:(UIImage *)dinosaurImage;

@end
