#import "Menu.mm"

%hook UIViewController
- (void)viewDidLoad {
    %orig;
    [Menu showMenu];
}
%end