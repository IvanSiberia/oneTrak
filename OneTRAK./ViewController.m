//
//  ViewController.m
//  OneTRAK.
//
//  Created by ivan polyakov on 09.03.17.
//  Copyright © 2017 ivan polyakov. All rights reserved.
//

#import "ViewController.h"
#import "OnlyUITextField.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *scorer;
@property (weak, nonatomic) IBOutlet UILabel *resultCountUp;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) NSObject* score;
@property (assign,nonatomic) NSInteger numberTimes;
@end

@implementation ViewController
- (IBAction)Refresh:(id)sender {
    
    self.textField.text = nil;
    self.resultCountUp.text = @"результат";
    self.scorer.text = @"#";
    self.numberTimes = 0;
    
}
- (IBAction)countUp:(id)sender {
    
    
    NSInteger score1 = [self.textField.text  integerValue];
//    score1 = pow(score1,2);
    [self squared:score1];
  
    NSString *string = [NSString stringWithFormat:@"%li",(long)[self squared:score1]];
    self.resultCountUp.text = string;
    self.numberTimes = _numberTimes +1;
    self.scorer.text = [NSString stringWithFormat:@"%li",(long)self.numberTimes];


}

- (NSInteger) squared :(NSInteger) integer {
    NSInteger integerRes = integer;
    for (int i=1; integer > i; i++) {
        integerRes = integerRes+integer;
    }
    return integerRes;

}



- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
