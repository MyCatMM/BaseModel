//
//  BaseModel.m
//  OverseasLiveing
//
//  Created by ZZF on 14-9-25.
//  Copyright (c) 2014年 张洲峰. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}

- (id)valueForUndefinedKey:(NSString *)key
{
    return nil;
}

- (instancetype)initBaseModelDic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
    
}

+ (instancetype)initWithInfoDic:(NSDictionary *)infoDic{
  return nil;
}

+ (NSMutableArray *)baseModelObject:(id)object
{
    NSMutableArray *arr = [NSMutableArray array];
    if ([object isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dic = object;
        BaseModel *base = [[self alloc] initBaseModelDic:dic];
        [arr addObject:base];
    } else if ([object isKindOfClass:[NSArray class]]) {
        NSArray *array = object;
        for (NSDictionary *dic in array) {
            @autoreleasepool {
                BaseModel *base = [[self alloc] initBaseModelDic:dic];
                [arr addObject:base];
            }
        }
    }
    return arr;

}
+ (NSMutableDictionary *)baseModelObject:(id)object andKey:(NSString *)key{
    NSMutableDictionary *returnDict = [NSMutableDictionary dictionary];
    if ([object isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dic = object;
        
        BaseModel *base = [[self alloc] initBaseModelDic:dic];
        [returnDict setObject:base forKey:[dic objectForKey:key]];
    } else if ([object isKindOfClass:[NSArray class]]) {
        NSArray *array = object;
        for (NSDictionary *dic in array) {
            @autoreleasepool {
                BaseModel *base = [[self alloc] initBaseModelDic:dic];
                [returnDict setObject:base forKey:[dic objectForKey:key]];
            }
        }
    }
    return returnDict;
}

@end
