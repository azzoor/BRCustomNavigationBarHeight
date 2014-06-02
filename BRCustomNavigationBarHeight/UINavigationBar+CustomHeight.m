//
//  UINavigationBar+CustomHeight.m
//  BRCustomNavigationBarHeight
//
//  Created by Aaron Stephenson on 2/06/2014.
//  Copyright (c) 2014 Bronron Apps. All rights reserved.
//

#import "UINavigationBar+CustomHeight.h"

#warning Change this height for the height of the navigation bar;
#define NAVIGATIONBAR_HEIGHT 80
#define NAVIGATIONBAR_HEIGHT_INCREASE NAVIGATIONBAR_HEIGHT - 64 //Default status bar height + default navigation bar height(20 + 44) 

//20 + 44 = 64 - 80 = 16 + 44 = 60

@implementation UINavigationBar (Height)

- (void)changeHeightAndColourOfBar
{
    self.translucent = NO;
    [self initialize];
}

- (CGSize)sizeThatFits:(CGSize)size
{
    CGSize newSize = CGSizeMake(self.frame.size.width, NAVIGATIONBAR_HEIGHT);
    return newSize;
}

- (void)initialize {
    
    [self setTransform:CGAffineTransformMakeTranslation(0, -(NAVIGATIONBAR_HEIGHT_INCREASE))];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSArray *classNamesToReposition = @[@"_UINavigationBarBackground"];
    NSArray *buttonClassNamesToReposition = @[@"_UINavigationBarBackIndicatorView"];
    
    for (UIView *view in [self subviews]) {
        
        if ([classNamesToReposition containsObject:NSStringFromClass([view class])]) {
            
            CGRect bounds = [self bounds];
            CGRect frame = [view frame];
            frame.origin.y = bounds.origin.y + NAVIGATIONBAR_HEIGHT_INCREASE - 20.f;
            frame.size.height = bounds.size.height + 20.f;
            
            [view setFrame:frame];
        }else if ([buttonClassNamesToReposition containsObject:NSStringFromClass([view class])]) {
            
            CGRect frame = [view frame];
            frame.origin.y = NAVIGATIONBAR_HEIGHT_INCREASE + (frame.size.height/2) + 20;
            frame.origin.x = 7;
            
            [view setFrame:frame];
        }
    }
}

@end
