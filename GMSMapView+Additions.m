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
                if([[[view class] description] isEqualToString:@"GMSx_QTMButton"] ) {
                    [buttons addObject:view];
                }
            }
        }
    };
    
    if (buttons.count == 0) {
        NSLog(@"UPDATING GOOGLE MAPS MIGHT HAVE BROKEN THE LOCATION BUTTON. CHECK IF IT HAS THE CORRECT IMAGE ON PRESSED STATE!");
        
        return nil;
    } else {
        return [buttons firstObject];
    }
}

@end
