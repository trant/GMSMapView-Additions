//
//  GMSMapView+Additions.m
//  Driver
//
//  Created by Antonio Pinho on 29/10/2014.
//  Copyright (c) 2014 Evolution. All rights reserved.
//

#import "GMSMapView+Additions.h"

@implementation GMSMapView (Additions)

- (UIButton *)myLocationButton {
    NSMutableArray *buttons = [NSMutableArray new];
    
    for (UIView *object in self.subviews) {
        if([[[object class] description] isEqualToString:@"GMSUISettingsView"] )
        {
            for(UIView *view in object.subviews) {
                if([[[view class] description] isEqualToString:@"UIButton"] ) {
                    [buttons addObject:view];
                }
            }
        }
    };
    
    if (buttons.count == 2) {
        UIButton *button_1 = [buttons objectAtIndex:0];
        UIButton *button_2 = [buttons objectAtIndex:1];
        
        return button_1.frameHeight > button_2.frameHeight ? button_1 : button_2;
    } else {
        NSLog(@"UPDATING GOOGLE MAPS MIGHT HAVE BROKEN THE LOCATION BUTTON. CHECK IF IT HAS THE CORRECT IMAGE ON PRESSED STATE!");
        
        return nil;
    }
}

@end
