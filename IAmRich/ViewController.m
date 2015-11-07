#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *avatar;
@property (weak, nonatomic) IBOutlet UILabel *iamrich;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.avatar.alpha = 0;
    self.iamrich.alpha = 0;
   
}

- (void) viewWillAppear:(BOOL)animated
{    [super viewWillAppear:animated];
    NSLog(@"avatar's alpha= %1.0f", self.avatar.alpha);
    [UIView animateWithDuration:4 animations:^
    {
        self.avatar.alpha=1;
        NSLog(@"avatar's alpha = %1.0f", self.avatar.alpha);
    }
                     completion:^(BOOL finished)
    {
                         [UIView animateWithDuration:3  animations:^
        {
                             self.iamrich.center = CGPointMake(self.iamrich.center
                                                               .x,390);
                             self.iamrich.alpha=1;
            
        }completion:nil];
        
    }];
}

     
     
     
@end
