//
//  OnlyUITextField.m
//  OneTRAK.
//
//  Created by ivan polyakov on 09.03.17.
//  Copyright © 2017 ivan polyakov. All rights reserved.
//

#import "OnlyUITextField.h"

@implementation OnlyUITextField

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    if (action == @selector(paste:))
    {
        return false;
    }
    
    return false;
}

@end
