#import <UIKit/UIKit.h>

@interface EditorViewController : UIViewController
@property UITextView *textView;
@end

@implementation EditorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:self.textView];

    NSString *path = @"/var/mobile/test.txt";

    NSString *text = [NSString stringWithContentsOfFile:path
                                               encoding:NSUTF8StringEncoding
                                                  error:nil];

    self.textView.text = text;
}

@end
