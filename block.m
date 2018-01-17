#import <Foundation/Foundation.h>
int main()
{
	void(^block)(void) = ^(void){printf("hello");};
        block();
    	return 0;

}

