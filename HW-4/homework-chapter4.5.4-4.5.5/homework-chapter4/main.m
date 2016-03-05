//
//  main.m
//  homework-chapter4
//
//  Created by Uno on 16/3/4.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import <Foundation/Foundation.h>


//@interface X : NSObject {
//    float _unknownX;
//    float _result;
//}
//-(float)unknownX;
//-(void)setX : (float)knowingX;
//-(float)result;
//-(void)getResult;
//-(void)print;
//@end
//
//
//
//@implementation X
//-(float)result {
//    return _result;
//}
//-(void)getResult {
//    _result = (3 * _unknownX * _unknownX * _unknownX) - (5 * _unknownX * _unknownX) + 6;
//}
//-(float)unknownX{
//    return _unknownX;
//}
//-(void)setX : (float)knowingX {
//    _unknownX = knowingX;
//}
//
//
//-(void)print {
//    NSLog(@"When X is %g, the answer of 3x^3 -5x^2 + 6 is %g.",_unknownX,_result);
//}
//@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        X *xpoly = [[X alloc] init];
//        [xpoly setX:2.55];
//        [xpoly print];

        //4.5.4
        float aX = 2.55;
        float ar;
        ar = (3 * aX * aX * aX) -(5 * aX * aX) +6;
        NSLog(@"%g,%g",aX,ar);
        
        //4.5.5
        double a = 3.31e-8;
        double b = 2.01e-7;
        double c = 7.16e-6;
        double d = 2.01e-8;
        double result;
        result= (a + b) / (c + d);
        NSLog(@"(%e + %e) / (%e + %e) = %e",a,b,c,d,result);
        
    }
    return 0;
}
