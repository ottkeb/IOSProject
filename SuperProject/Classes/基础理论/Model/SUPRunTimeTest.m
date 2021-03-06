//
//  SUPRunTimeTest.m
//  SuperProject
//
//  Created by NShunJian on 2018/1/20.
//  Copyright © 2018年 superMan. All rights reserved.
//

#import "SUPRunTimeTest.h"


@interface SUPRunTimeTest ()
{
    CGFloat _userHeight_;
}

@end

@implementation SUPRunTimeTest




+ (void)showAddress
{
    NSLog(@"北京");
}



- (NSString *)showUserName:(NSString *)userName
{
    
    return [NSString stringWithFormat:@"用户名字是%@", userName];
}


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        
        
        unsigned int count = 0;
        
        Ivar *ivarList = class_copyIvarList(self.class, &count);
        
        
        
        for (NSInteger i = 0; i < count; i++) {
            
            Ivar ivar = ivarList[i];
            
            
            const char *proName = ivar_getName(ivar);
            
//            id value = [self valueForKeyPath:[NSString stringWithUTF8String:proName]];
            
            
//            [aCoder encodeObject:value forKey:[NSString stringWithUTF8String:proName]];
            
           id value = [coder decodeObjectForKey:[NSString stringWithUTF8String:proName]];
            
            
            [self setValue:value forKeyPath:[NSString stringWithUTF8String:proName]];
            
            
            
            
            NSLog(@"%@", value);
            
        }
        
        
        free(ivarList);

        
        
        
        
        
    }
    return self;
}




- (void)encodeWithCoder:(NSCoder *)aCoder
{
    
    unsigned int count = 0;
    
    Ivar *ivarList = class_copyIvarList(self.class, &count);
    
    
    
    for (NSInteger i = 0; i < count; i++) {
        
        Ivar ivar = ivarList[i];
        
        
        const char *proName = ivar_getName(ivar);
        
        id value = [self valueForKeyPath:[NSString stringWithUTF8String:proName]];
        
        
        [aCoder encodeObject:value forKey:[NSString stringWithUTF8String:proName]];
        
        
        NSLog(@"%s", proName);
        
    }
    
    
    free(ivarList);
}








@end
