#import <Foundation/Foundation.h>

@interface QYBlockDemo : NSObject

@property (nonatomic, strong) NSString *value1;

@property (nonatomic, strong) NSString *value2;

- (void)startDemo;

@end

@implementation QYBlockDemo

- (id)init
{
    self = [super self];
    if (self)
    {
        _value1 = @"Hello, World!";
        _value2 = @"Hello, Objective-C!";
    }
    return self;
}

- (void)startDemo
{
    // 通过 self.xxx 方式访问
    void (^block0)() = ^{
        NSLog(@"zhangqingyu %@", self.value1);
    };
    block0();

    // 通过 _xxx 方式访问
    void (^block1)() = ^{
        NSLog(@"zhangqingyu %@", _value2);
    };
    block1();

    // 临时变量
    void (^block2)() = ^{
        NSString *value3 = @"Fucking block!";
        NSLog(@"zhangqingyu %@", value3);
    };
    block2();
}

@end

int main (int argc, const char * argv[])
{
    @autoreleasepool
    {
        QYBlockDemo *demo = [[QYBlockDemo alloc] init];
        [demo startDemo];
    }
    return 0;
}

