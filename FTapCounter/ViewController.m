//
//  ViewController.m
//  FTapCounter
//
//  Created by Student P_02 on 12/10/16.
//  Copyright © 2016 farhanMirza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self CalscreenWidthHeight];
    [self ButtonReset];
    [self ButtonTap];
    [self OutputLable];
    [self addmaxlable];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)CalscreenWidthHeight{
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
}

-(void)ButtonReset{
    ButtonReset = [[UIButton alloc]initWithFrame:CGRectMake(0, (screenWidth)+(3*KHeightOfResetButton), screenWidth, KHeightOfResetButton)];
    [ButtonReset setBackgroundColor:[UIColor yellowColor]];
    [ButtonReset setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [ButtonReset setTitle:@"RESET" forState:UIControlStateNormal];
    [self.view addSubview:ButtonReset];
    [ButtonReset addTarget:self action:@selector(handleReset) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)handleReset{
    
    maxLable.text = [NSString stringWithFormat:@"%@",OutputLable.text];
    OutputLable.text=@"0";
}

-(void)ButtonTap{
    ButtoneTap = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, screenWidth, 8*KHeightOfResetButton)];
    
    
    [self.view addSubview:ButtoneTap];
    
    [ButtoneTap addTarget:self action:@selector(HandleTap) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)HandleTap{
    int Value = OutputLable.text.intValue;
    Value = Value+1;
    NSString *newString = [NSString stringWithFormat:@"%d",Value];
    OutputLable.text = newString;
    
}

-(void)OutputLable{
    OutputLable = [[UILabel alloc]initWithFrame:CGRectMake(160,20 ,screenWidth, screenHeight)];
    [OutputLable setTextColor:[UIColor blackColor]];
    [OutputLable setFont:[UIFont systemFontOfSize:155]];

    
    [self.view addSubview:OutputLable];
    
    
    
}


-(void)addmaxlable{
    maxLable = [[UILabel alloc]initWithFrame:CGRectMake(160,20,80,40)];
    [maxLable setBackgroundColor:[UIColor redColor]];

    
    
    
    [self.view addSubview:maxLable];
    

    
    
    
}

@end
