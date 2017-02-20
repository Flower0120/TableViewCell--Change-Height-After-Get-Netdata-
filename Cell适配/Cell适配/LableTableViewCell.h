//
//  LableTableViewCell.h
//  Cell自适应
//
//  Created by 花花一世界 on 17/2/10.
//  Copyright © 2017年 花花一世界. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LableTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *LableText;

- (void)getModleWithString : (NSString *)TextStr;
@end
