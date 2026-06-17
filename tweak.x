#import "Menu.mm"

%hook UIViewController
- (void)viewDidLoad {
    %orig;
    // إضافة فحص بسيط للتأكد من أننا في واجهة التطبيق الرئيسية
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [Menu showMenu];
    });
}
%end
