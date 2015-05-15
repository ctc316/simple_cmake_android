//
//  test_cross.c
//  test_cmake_android
//
//  Created by ctc316 on 2015/5/13.
//  Copyright (c) 2015年 ctc316. All rights reserved.
//

#include "test_cross.h"


char* cross_helloWorld()
{
    char* s = "success";
    printf("%s",s);
    return s;
}

int cross_numTest()
{
    int r = 100;
    printf("%d",r);
    return r;
}