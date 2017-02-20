//
//  LableTableViewCell.m
//  Cell自适应
//
//  Created by 花花一世界 on 17/2/10.
//  Copyright © 2017年 花花一世界. All rights reserved.
//

#import "LableTableViewCell.h"

@implementation LableTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}
/* 重写初始化方法 */
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    NSLog(@"%s, %d", __func__, __LINE__);
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        /* 子控件的初始化 */
        self.LableText = [[UILabel alloc] init];
        self.LableText.backgroundColor = [UIColor cyanColor];
        self.LableText.font = [UIFont systemFontOfSize:15];
        self.LableText.numberOfLines = 0;
        self.LableText.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, self.frame.size.height);
        [self.contentView addSubview:self.LableText];
    }
    return self;
    
}

- (void)getModleWithString : (NSString *)TextStr{
    self.LableText.text = TextStr;
    CGRect rect = [TextStr boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 0) options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    self.LableText.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, rect.size.height);

}
@end
