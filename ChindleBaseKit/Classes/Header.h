//
//  Header.h
//  答题详情
//
//  Created by 冯垚杰 on 2017/7/4.
//  Copyright © 2017年 冯垚杰. All rights reserved.
//

#ifndef Header_h
#define Header_h

#import "SchoolStudentDB.h"
#import "SKStudentView.h"
#import "HUDManager.h"
#import "WHToast.h"
#import "UIImageView+WebCache.h"
#import "HttpsManage.h"
#import "MJRefresh/MJRefresh.h"
#import "NSStringDate.h"
#import <Masonry/Masonry.h>
#import "NSDate+Extension.h"
#import "TLMeetingUIConfig.h"

#define SAVEIMAGE_NAME @"USERICON.jpg"


#define KMainW [UIScreen mainScreen].bounds.size.width
#define KMainH [UIScreen mainScreen].bounds.size.height

#define KWhiteColor [UIColor whiteColor]
//#define KBackgroundColor [UIColor ]
#define KLineColor [UIColor grayColor]
#define kMainColor [UIColor blueColor]


#define RGBA_COLOR(R, G, B, A) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:A]

#define kBlueColor [UIColor colorWithRed:84.0f/255 green:211.0f/255 blue:57.f/255 alpha:1]
#define kGranColor [UIColor colorWithRed:223.f/255 green:231.f/255 blue:236.f/255 alpha:1]

#define IPONEX ((KMainH == 812 || KMainH == 821 || KMainH == 896 || KMainH == 844 || KMainH == 926 || KMainH == 780) ? true : false)


#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define IS_PAD (UI_USER_INTERFACE_IDIOM()== UIUserInterfaceIdiomPad)

#define kBottomBTNHegith  40



//每次发版都需要修改环境
#ifdef DEBUG //开发
//本地测试
//#define UAT_CHINDLE @"https://dev.keyclass.cn/"
//#define UAT_CHINDLE @"http://mtpsvj.natappfree.cc/"
#define UAT_CHINDLE @"http://10.204.42.156:9099/" //于

//#define UAT_CHINDLE @"http://10.204.42.121:9099/" //于
//#define UAT_CHINDLE @"http://10.204.42.139:9099/"//钟

//#define UAT_CHINDLE @"http://219.133.2.93:9099/"

//#define UAT_CHINDLE @"http://talk915.wicp.net:9099/"

#elif DEBUGTEST

#define UAT_CHINDLE @"https://uat.keyclass.cn/"

#elif DEBUGFORMAL

#define UAT_CHINDLE @"https://www.keyclass.cn/"

#elif APPSTORE

#define UAT_CHINDLE @"https://www.keyclass.cn/"

#endif


/**
 接口
 userCommon/getAllSubjectConstant
 获取所有的分类常量列表
 */
#define StudentGetAllSubjectConstant @"studentServer/userCommon/getAllSubjectConstant"

/**
 courseDetail/getPastCourses 获取列表
 */
#define StudentGetPastCourses @"studentServer/courseDetail/getCourses"

#define StudentGetRecommendedCourse @"studentServer/userCommon/getRecommendedCourse"



/**
 courseDetail/getCourseDetailById 获取详情
 */
#define StudentGetCourseDetailById @"studentServer/courseDetail/getCourseDetailById"

#define StudentGetCourseScheduleById @"studentServer/courseDetail/getCourseScheduleById"

//banner
#define StudentgetBanner @"studentServer/userCommon/getAPPBanner"

//邀请活动
#define StudentappGetActivity @"studentServer/app/activity/appGetActivity"



//banner
#define StudentgetQualityList @"studentServer/app/quality/getQualityList"

//点击次数
#define StudentOpenNumber @"studentServer/app/quality/openNumber"

//活动点击次数
#define StudenthtmlRecording @"studentServer/app/activity/htmlRecording"

//推广活动
#define StudentAppGetHomeActivity @"studentServer/appHomeActivity/appGetHomeActivity"

#define StudentAppGetCourseCountDown @"studentServer/appHomeActivity/appGetCourseCountDown"

#define StudentJoinClassRoom @"studentServer/classRoom/joinClassRoom"





#undef    AS_SINGLETON
#define AS_SINGLETON( __class ) \
+ (__class *)sharedInstance;


#undef    DEF_SINGLETON
#define DEF_SINGLETON( __class ) \
+ (__class *)sharedInstance \
{ \
static dispatch_once_t once; \
static __class * __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[__class alloc] init]; } ); \
return __singleton__; \
}


#endif /* Header_h */
