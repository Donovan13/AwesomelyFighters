//
//  DinosaurInfoViewController.m
//  AwesomelyFighters
//
//  Created by Kyle on 3/22/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "DinosaurInfoViewController.h"

@interface DinosaurInfoViewController () <UITableViewDelegate,UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UIImageView *dinosaurImageOutlet;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end

@implementation DinosaurInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.nameLabel.text = self.dinosaur.name;
    self.descriptionLabel.text = self.dinosaur.dinosaurDescription;
    self.dinosaurImageOutlet.image = self.dinosaur.dinosaurImage;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dinosaur.attributes.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID" forIndexPath:indexPath];
    cell.textLabel.text = self.dinosaur.attributes[indexPath.row];
    cell.textLabel.textColor = [UIColor blueColor];
    return cell;
    
}



@end
