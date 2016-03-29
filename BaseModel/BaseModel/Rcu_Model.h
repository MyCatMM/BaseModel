//
//  Rcu_Model.h
//  ubereasycontrol
//
//  Created by app on 16/2/23.
//  Copyright © 2016年 devpltc. All rights reserved.
//

#import "BaseModel.h"

@interface Rcu_Model : BaseModel
@property (nonatomic, assign) BOOL available;
@property (nonatomic, strong) NSNumber *createTime;
@property (nonatomic, strong) NSNumber *creator;
@property (nonatomic, strong) NSNumber *hotelId;
@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, copy)   NSString *lineType;
@property (nonatomic, strong) NSNumber *modifier;
@property (nonatomic, strong) NSNumber *modifyTime;
@property (nonatomic, copy)   NSString *name;
@property (nonatomic, copy)   NSString *num;
@property (nonatomic, strong) NSNumber *roomId;
@property (nonatomic, copy)   NSString *roomType;
@property (nonatomic, copy)   NSString *rcuState;


@end
