#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#include "countdown.h"

#define intToBoolean(x) (x == 0) ? NO : YES

int main(int argc, char * argv[]) {
	int n = 10;
	
	printf("%d is %s",n ,(n % 2 == 0) ? "even\n" : "odd\n" );
	
	int i = (n % 2 == 0) ? n : n + 1;
	
	int h = 1;
	
	BOOL myBool = intToBoolean(h);

	printf("i is %d because n was %d\n", i, n);
	
	countdown(10);
	@autoreleasepool {
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
	}
}
