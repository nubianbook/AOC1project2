//
//  ViewController.m
//  AOC1_project2
//
//  Created by Carol Gaylor on 10/30/12.
//  Copyright (c) 2012 Carol Gaylor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad

{// Label one is the title
    self.view.backgroundColor = [UIColor blueColor];
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 305.0f, 20.0f)];
    if (label1 != nil) {
        
        label1.backgroundColor = [UIColor yellowColor];
        label1.text = @"American Odyssey";
        label1.textColor = [UIColor blackColor];
        label1.textAlignment =  NSTextAlignmentCenter;
    }
    
    [self.view addSubview:label1];
    
 // Label two is the Author
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 90.0f, 125.0f, 20.0f)];
    if (label2 != nil) {
        
        label2.backgroundColor = [UIColor redColor];
        label2.text = @"Author:";
        label2.textColor = [UIColor yellowColor];
        label2.textAlignment =  NSTextAlignmentRight;
    }
    [self.view addSubview:label2];
    
 // Label three is The Robert Conot box one of my favorite author's he just passed away last year
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(135.0f, 90.0f, 175.0f, 20.0f)];
    if (label3 != nil) {
        
        label3.backgroundColor = [UIColor orangeColor];
        label3.text = @"By Robert Conot";
        label3.textColor = [UIColor purpleColor];
        label3.textAlignment =  NSTextAlignmentLeft;
    }
    [self.view addSubview:label3];
    
 // Label four is the Published spot
    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 120.0f, 125.0f, 20.0f)];
    if (label4 != nil) {
        
        label4.backgroundColor = [UIColor whiteColor];
        label4.text = @"Published:";
        label4.textColor = [UIColor orangeColor];
        label4.textAlignment =  NSTextAlignmentRight;
    }
    [self.view addSubview:label4];
    
 // Label five is the Date
    UILabel *label5 = [[UILabel alloc] initWithFrame:CGRectMake(135.0f, 120.0f, 175.0f, 20.0f)];
    if (label5 != nil) {
        
        label5.backgroundColor = [UIColor brownColor];
        label5.text = @"August 1974";
        label5.textColor = [UIColor greenColor];
        label5.textAlignment =  NSTextAlignmentLeft;
    }
    [self.view addSubview:label5];

 // Label six is the Summary area
    UILabel *label6 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 152.0f, 125.0f, 20.0f)];
    if (label6 != nil) {
        
        label6.backgroundColor = [UIColor orangeColor];
        label6.text = @"Summary";
        label6.textColor = [UIColor blueColor];
        label6.textAlignment =  NSTextAlignmentCenter;
    }
    [self.view addSubview:label6];
    
 // Label seven is the Content 
    UILabel *label7 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 172.0f, 305.0f, 145.0f)];
    if (label7 != nil) {
        
        label7.backgroundColor = [UIColor grayColor];
        label7.text = @"This book is an in depth study of the history of Detroit Michigan. Chronologing it's history between the 1700s to 1972.";
        label7.numberOfLines = 6;
        label7.textColor = [UIColor whiteColor];
        label7.textAlignment =  NSTextAlignmentCenter;
    }
    [self.view addSubview:label7];
    
 // Label eight is the list of items block
    UILabel *label8 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 330.0f, 125.0f, 20.0f)];
    if (label8 != nil) {
        
        label8.backgroundColor = [UIColor greenColor];
        label8.text = @"List of items";
        label8.textColor = [UIColor magentaColor];
        label8.textAlignment =  NSTextAlignmentLeft;
    }
    [self.view addSubview:label8];
    
    // 1. I am attempting to create NSArray of items from the book I read
    NSArray *dethistoryArray = [NSArray arrayWithObjects:@"Ford Motor", @"Dodge Brothers", @"Lumber", @"Ovens", @"Salt", nil];
    
    // 2. I am attempting a NSMutableString & allocate it with a loop ohh Jesus
    NSMutableString *arrayBookStuff = [[NSMutableString alloc] initWithCapacity: 5];  //that is the set up
    
    // 3. This is the loop from the pits of _______ gave me the blues
    for (int j=0; j<[dethistoryArray count]; j++){
        [arrayBookStuff appendString:[dethistoryArray objectAtIndex:j]];
        if (j<dethistoryArray.count -1){
            [arrayBookStuff appendString:@", "];
        }
    }
    NSLog(@"%@", arrayBookStuff);
    
    // 4. this is where the troublesome list of items went
    UILabel *label9 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 350.0f, 305.0f, 100.0f)];
    if (label9 != nil) {
        
        label9.backgroundColor = [UIColor magentaColor];
        label9.text = arrayBookStuff;
        label9.textColor = [UIColor greenColor];
        label9.numberOfLines = 7;
        label9.textAlignment =  NSTextAlignmentCenter;
    }
    [self.view addSubview:label9];
    
    
    
     [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
     }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
