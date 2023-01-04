//
//  TESCategoryTitleView.m
//  NewTalkEnglishStudentProject
//
//  Created by mac on 2021/1/13.
//

#import "TESCategoryTitleView.h"

@interface TESCategoryTitleView ()<JXCategoryViewDelegate>

@end

@implementation TESCategoryTitleView

+(instancetype)initTitleView:(NSArray *)titles titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont titleSelectedColor:(UIColor *)titleSelectedColor titleSelectedFont:(UIFont *)titleSelectedFont{
    TESCategoryTitleView *view = [[TESCategoryTitleView alloc] init];
    view.titles = titles;//标题组
    view.titleSelectedColor = titleSelectedColor;
    view.titleColor = titleColor;
    view.titleFont = titleFont;
    view.titleSelectedFont = titleSelectedFont;
    view.titleColorGradientEnabled = YES;//是否渐变过渡
    view.titleLabelZoomEnabled = YES;//是否设置选择效果
    view.contentScrollViewClickTransitionAnimationEnabled = YES;//是否显示动画
    return view;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.delegate = self;
    }
    return self;
}

/**
 点击选中或者滚动选中都会调用该方法。适用于只关心选中事件，不关心具体是点击还是滚动选中的。

 @param categoryView categoryView对象
 @param index 选中的index
 */
- (void)categoryView:(JXCategoryBaseView *)categoryView didSelectedItemAtIndex:(NSInteger)index {
    if(self.didSelectedItemAtIndexBlock){
        self.didSelectedItemAtIndexBlock(categoryView,index);
    }
}

/**
 点击选中的情况才会调用该方法

 @param categoryView categoryView对象
 @param index 选中的index
 */
-(void)categoryView:(JXCategoryBaseView *)categoryView didClickSelectedItemAtIndex:(NSInteger)index {
    if(self.didClickSelectedItemAtIndex){
        self.didClickSelectedItemAtIndex(categoryView,index);
    }
}

@end
