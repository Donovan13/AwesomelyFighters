//
//  ViewController.m
//  AwesomelyFighters
//
//  Created by Kyle on 3/22/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UITextField *dinasaurNameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *dinasaurDescriptionOutlet;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return nil;
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    
    
}

@end
