//
//  RTFHouseDrawView.m
//  Drawing a House
//
//  Created by Robert Finch on 26/05/2014.
//  Copyright (c) 2014 Robert Finch. All rights reserved.
//

#import "RTFHouseDrawView.h"

@implementation RTFHouseDrawView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [self.pathToDraw stroke];
}
@end
