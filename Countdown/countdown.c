//
//  countdown.c
//  Countdown
//
//  Created by Alessandro on 07/10/14.
//  Copyright (c) 2014 Alessandro. All rights reserved.
//

#include "countdown.h"

void countdown(int n) {
	if (n > -1){
		printf("%d\n", n);
		countdown(n-1);
	} else {
		return;
	}
}