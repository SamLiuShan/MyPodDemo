//
//  BlurView.m
//  browser
//
//  Created by MY on 15/12/16.
//
//

#import "BlurView.h"

@interface BlurView() {
    UIToolbar *toolBar;
}

@end

@implementation BlurView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self frostedGlass];
    }
    return self;
}

-(void)frostedGlass
{
    self.clipsToBounds = YES;
    if (IOS7 && !toolBar) {
        toolBar = [[UIToolbar alloc] initWithFrame:self.bounds];
        [self.layer insertSublayer:toolBar.layer atIndex:0];
    } else {
        self.backgroundColor = [UIColor whiteColor];
    }

}

- (void)layoutSubviews {
    [super layoutSubviews];
    toolBar.frame = self.bounds;
}


@end
