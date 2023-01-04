//
//  TESCategoryTitleView.h
//  NewTalkEnglishStudentProject
//
//  Created by mac on 2021/1/13.
//

#import <UIKit/UIKit.h>
#import <JXCategoryView/JXCategoryView.h>
NS_ASSUME_NONNULL_BEGIN

@class JXCategoryBaseView;
@class JXCategoryView;

typedef void(^DidSelectedItemAtIndexBlock)(JXCategoryBaseView *categoryView,NSInteger atIndex);

typedef void(^DidClickSelectedItemAtIndex)(JXCategoryBaseView *categoryView,NSInteger atIndex);


@interface TESCategoryTitleView : JXCategoryTitleView

@property(nonatomic,copy)DidSelectedItemAtIndexBlock didSelectedItemAtIndexBlock;

@property(nonatomic,copy)DidClickSelectedItemAtIndex didClickSelectedItemAtIndex;

+(instancetype)initTitleView:(NSArray *)titles titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont titleSelectedColor:(UIColor *)titleSelectedColor titleSelectedFont:(UIFont *)titleSelectedFont;

@end

NS_ASSUME_NONNULL_END
