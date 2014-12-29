//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Insert code here...
    iterateCount(4);
    
    return YES;
}

int divisor = 6;
int multiplie = 8;
double divided1 (int myNumber);
int multiplied (int myNumber);

int iterateCount (int myNumber)
{
    if (myNumber > 0)
    {
        NSLog(@"Iterate %d", myNumber);
        int result = multiplied(myNumber);
        NSLog(@"Multiplied %d by %d to be %d", myNumber, multiplie, result);
        
        double result2;
        result2 = divided1(result);
        NSLog(@"Divided %d by %d to be %f", result, divisor , result2);
        
        myNumber--;
        iterateCount(myNumber);
    }
    return 0;
}



int multiplied (int myNumber)
{
        return myNumber * multiplie;
}

@end


double divided1 (int myNumber)
{
    return (myNumber / (float)divisor);
}
