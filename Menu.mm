#import <UIKit/UIKit.h>

@interface Menu : NSObject
+ (void)showMenu;
@end

@implementation Menu

static BOOL menuShown = NO;

+ (void)showMenu {
    if (menuShown) return;
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Color Road Hack" 
                                                                   message:@"Choose an option" 
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Unlimited Coins" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"Unlimited Coins Activated!");
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Unlimited Lives" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"Unlimited Lives Activated!");
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        menuShown = NO;
    }]];
    
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootVC presentViewController:alert animated:YES completion:nil];
    menuShown = YES;
}

@end
