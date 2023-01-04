//
//  TESCategoryIndicatorLineView.m
//  NewTalkEnglishStudentProject
//
//  Created by mac on 2021/1/13.
//

#import "TESCategoryIndicatorLineView.h"

@implementation TESCategoryIndicatorLineView

+(instancetype)initIndicatorLineView:(UIColor *)indicatorColor indicatorWidth:(CGFloat)indicatorWidth{
    TESCategoryIndicatorLineView *lineView = [[TESCategoryIndicatorLineView alloc] init];
    lineView.indicatorColor = indicatorColor;
    lineView.indicatorWidth = indicatorWidth;
    return lineView;
}


@end
