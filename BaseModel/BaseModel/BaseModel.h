//
//  BaseModel.h
//  OverseasLiveing
//
//  Created by ZZF on 14-9-25.
//  Copyright (c) 2014年 张洲峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

- (instancetype)initBaseModelDic:(NSDictionary *)dic;
+ (NSMutableArray *)baseModelObject:(id)object;
//根据数据模型中的一个key  返回一个跟value对应的一个数据模型（例：key = (userId) 字典样式 = 11:Model）
+ (NSMutableDictionary *)baseModelObject:(id)object andKey:(NSString *)key;
+ (instancetype)initWithInfoDic:(NSDictionary*)infoDic;
@end
