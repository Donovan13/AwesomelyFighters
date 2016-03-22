//
//  ViewController.m
//  AwesomelyFighters
//
//  Created by Kyle on 3/22/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "ViewController.h"
#import "Dinosaur.h"
#import "DinosaurInfoViewController.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *dinasaurNameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *dinasaurDescriptionOutlet;
@property NSMutableArray *dinosaurs;
@property (weak, nonatomic) IBOutlet UITableView *dinosaurTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    Dinosaur *fred = [[Dinosaur alloc]initWithName:@"Fred" withDescription:@"Mean and Green" withImage:[UIImage imageNamed:@"dino1"] andAttributes:@[@"Read",@"Hike",@"Eat"]];
    Dinosaur *bill = [[Dinosaur alloc]initWithName:@"Bill" withDescription:@"Nice guy" withImage:[UIImage imageNamed:@"dino2"] andAttributes:@[@"Play golf"]];
    Dinosaur *stan = [[Dinosaur alloc]initWithName:@"Stan" withDescription:@"Watch out" withImage:[UIImage imageNamed:@"dino3"] andAttributes:@[@"Go rock climbing"]];
    
    self.dinosaurs = [[NSMutableArray alloc]init];
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
    cell.textLabel.text = dinosaur.name;
    cell.detailTextLabel.text = dinosaur.dinosaurDescription;
    cell.imageView.image = dinosaur.dinosaurImage;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0;
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    
    Dinosaur *dinosaur = [[Dinosaur alloc]init];
    dinosaur.name = self.dinasaurNameOutlet.text;
    dinosaur.dinosaurDescription = self.dinasaurDescriptionOutlet.text;
    dinosaur.dinosaurImage = [UIImage imageNamed:@"dino7"];
    [self.dinosaurs addObject:dinosaur];
    [self.dinosaurTableView reloadData];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender {
    NSIndexPath *indexPath = [self.dinosaurTableView indexPathForCell:sender];
    Dinosaur *dinosaur = self.dinosaurs[indexPath.row];
    DinosaurInfoViewController *destination = segue.destinationViewController;
    destination.dinosaur = dinosaur;
}



@end
