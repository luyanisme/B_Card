//
//	 ______    ______    ______    
//	/\  __ \  /\  ___\  /\  ___\   
//	\ \  __<  \ \  __\_ \ \  __\_ 
//	 \ \_____\ \ \_____\ \ \_____\ 
//	  \/_____/  \/_____/  \/_____/ 
//
//	Powered by BeeFramework
//
//
//  AppTabBar_iPhone.m
//  B_Card
//
//  Created by 卢棪 on 10/27/16.
//  Copyright © 2016 luyan. All rights reserved.
//

#import "AppTabBar_iPhone.h"

#pragma mark -

DEF_UI(AppTabBar_iPhone, tabbar)
@implementation AppTabBar_iPhone

DEF_SINGLETON(AppTabbar_iPhone)
DEF_OUTLET(BeeUILabel, badge)

SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )

- (void)load
{
    self.badge.hidden = YES;
}

- (void)unload
{
}

- (void)dataDidChanged
{
    // TODO: fill data
}

- (void)layoutDidFinish
{
    // TODO: custom layout here
}

@end
