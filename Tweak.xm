@interface RootViewController : NSObject

- (void)setWatermarkHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)animated;

@end

%hook RootViewController

- (void)setWatermarkHidden:(BOOL)hidden animated:(BOOL)animated {
    %orig(YES, animated);
}

- (void)viewDidAppear:(BOOL)animated {
    %orig;
    
    [self setWatermarkHidden:YES animated:NO];
}

%end