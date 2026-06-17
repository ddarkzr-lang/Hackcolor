#import <UIKit/UIKit.h>

@interface Menu : NSObject
+ (void)showMenu;
@end

@implementation Menu

+ (void)showMenu {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Color Road Hack" 
                                                                   message:@"Choose an option" 
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Unlimited Coins" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // كود تفعيل العملات
        NSLog(@"Unlimited Coins Activated!");
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Unlimited Lives" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // كود تفعيل الأرواح
        NSLog(@"Unlimited Lives Activated!");
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil]];
    
    // عرض القائمة
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootVC presentViewController:alert animated:YES completion:nil];
}

@end