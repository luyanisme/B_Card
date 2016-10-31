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
//  AppTabBar_iPhone.h
//  B_Card
//
//  Created by 卢棪 on 10/27/16.
//  Copyright © 2016 luyan. All rights reserved.
//

#import "Bee.h"

#pragma mark -
AS_UI(AppTabBar_iPhone, tabbar)

@interface AppTabBar_iPhone : BeeUICell

AS_SINGLETON(AppTabbar_iPhone)
AS_OUTLET(BeeUILabel, badge)

@end
