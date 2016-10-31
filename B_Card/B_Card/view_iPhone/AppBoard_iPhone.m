//
//   ______    ______    ______    
//  /\  __ \  /\  ___\  /\  ___\   
//  \ \  __<  \ \  __\_ \ \  __\_ 
//   \ \_____\ \ \_____\ \ \_____\ 
//    \/_____/  \/_____/  \/_____/ 
//
//  Powered by BeeFramework
//
//
//  AppBoard_iPhone.m
//  B_Card
//
//  Created by 卢棪 on 10/27/16.
//  Copyright © 2016 luyan. All rights reserved.
//

#import "AppBoard_iPhone.h"
#import "AppTabBar_iPhone.h"
#import "CardBoard_iPhone.h"

#pragma mark -
DEF_UI(AppBoard_iPhone, appBoard)
@implementation AppBoard_iPhone

DEF_SINGLETON( AppBoard_iPhone )

- (void)load
{
}

- (void)unload
{
}

#pragma mark Signal

ON_CREATE_VIEWS( signal )
{
    //将route视图加到试图中
    [self.view addSubview:bee.ui.router.view];
    [self.view addSubview:bee.ui.tabbar];
    
    //映射stack map
    [bee.ui.router map:@"card" toClass:[CardBoard_iPhone class]];
    [bee.ui.router open:@"card" animated:YES];

}

ON_DELETE_VIEWS( signal )
{
}

ON_LAYOUT_VIEWS( signal )
{
    bee.ui.tabbar.frame = CGRectMake(0, SCREEN_HEIGHT - TABBAR_HEIGHT, SCREEN_WIDTH, TABBAR_HEIGHT);
}

ON_WILL_APPEAR( signal )
{
}

ON_DID_APPEAR( signal )
{
}

ON_WILL_DISAPPEAR( signal )
{
}

ON_DID_DISAPPEAR( signal )
{
}

ON_SIGNAL3( BeeUINavigationBar, LEFT_TOUCHED, signal )
{
}

ON_SIGNAL3( BeeUINavigationBar, RIGHT_TOUCHED, signal )
{
}

/*卡片界面*/
ON_SIGNAL3(AppTabBar_iPhone, card_btn, signal){
    NSLog(@"卡片");
}

/*消息界面*/
ON_SIGNAL3(AppTabBar_iPhone, msg_btn, signal){
    NSLog(@"消息");
}

/*拍照界面*/
ON_SIGNAL3(AppTabBar_iPhone, camera_btn, signal){
    NSLog(@"拍照");
}

/*搜索界面*/
ON_SIGNAL3(AppTabBar_iPhone, search_btn, signal){
    NSLog(@"搜索");
}

/*我界面*/
ON_SIGNAL3(AppTabBar_iPhone, me_btn, signal){
    NSLog(@"我");
}
@end
