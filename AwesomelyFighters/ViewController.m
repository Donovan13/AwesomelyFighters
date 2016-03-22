//
//  ViewController.m
//  AwesomelyFighters
//
//  Created by Kyle on 3/22/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "ViewController.h"
#import "Dinosaur.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *dinasaurNameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *dinasaurDescriptionOutlet;
@property NSMutableArray *dinosaurs;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    Dinosaur *fred = [[Dinosaur alloc]initWithName:@"fred" withDescription:@"Mean and Green" andImage:[UIImage imageNamed:@"dino1.png"]];
    
    Dinosaur *bill = [[Dinosaur alloc]initWithName:@"bill" withDescription:@"Nice guy" andImage:[UIImage imageNamed:@"dino2.png"]];
    
    Dinosaur *stan = [[Dinosaur alloc]initWithName:@"stan" withDescription:@"Watch out" andImage:[UIImage imageNamed:@"dino3.png"]];
    
    [self.dinosaurs addObject:fred];
    [self.dinosaurs addObject:bill];
    [self.dinosaurs addObject:stan];
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dinosaurs.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Dinosaur *dinosaur = self.dinosaurs[indexPath.row];
    
    
    return cell;
    
    
    
}

- (IBAction)addButtonPressed:(UIButton *)sender {

    
}

@end
