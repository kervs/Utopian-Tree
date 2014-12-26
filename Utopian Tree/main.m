//
//  main.m
//  Utopian Tree
//
//  Created by Kervins Valcourt on 12/25/14.
//  Copyright (c) 2014 EastoftheWestEnd. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int test,y,i,j,newvalue = 0;
        NSMutableArray *arrayCycles= [NSMutableArray array];
        NSMutableArray *arrayNumber = [NSMutableArray array];
        
        scanf("%d",&test);
        
        
        for (i =0 ; i < test; i++) {
            
            scanf("%d",&y);
            [arrayCycles addObject:[NSNumber numberWithInt:y]];
        }
        
        
        for ( j=0 ; j<[arrayCycles count] ;j++)
        {   NSNumber *tempNumber =[arrayCycles objectAtIndex:j];
            
            for (int i = 0; i <= [tempNumber integerValue]; i++) {
                if (i %2 ==0){
                    newvalue =newvalue +1;
                    
                }else{
                    newvalue = newvalue*2;
                }
            }
            
            [arrayNumber addObject:[NSNumber numberWithInt:newvalue]];
            newvalue = 0;
            
        }
        
        for (int k = 0; k < [arrayNumber count]; k++) {
            printf("%ld\n",[(NSNumber *)arrayNumber[k] integerValue]);
        }
    }
    
}
