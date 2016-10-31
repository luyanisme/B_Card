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
//  CardBoard_iPhone.m
//  B_Card
//
//  Created by 卢棪 on 10/31/16.
//  Copyright © 2016 luyan. All rights reserved.
//

#import "CardBoard_iPhone.h"
#import "CardAddCell_iPhone.h"

#pragma mark -

@interface CardBoard_iPhone()
{
	//<#@private var#>
}
AS_OUTLET(BeeUITextView, search_input)
AS_OUTLET(BeeUIScrollView, list)
@end

@implementation CardBoard_iPhone

SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )

DEF_OUTLET(BeeUITextView, search_input)
DEF_OUTLET(BeeUIScrollView, list)

- (void)load
{
}

- (void)unload
{
}

#pragma mark - Signal

ON_CREATE_VIEWS( signal )
{
    self.view.backgroundColor = [UIColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1];
    [self.search_input setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    
    self.list.animationDuration = 0.25f;
    self.list.lineCount = 1;
    
    self.list.whenReloading = ^{
        self.list.total = 3;
        
        BeeUIScrollItem* connectionItem = self.list.items[0];
        connectionItem.clazz = [CardAddCell_iPhone class];
        connectionItem.size = CGSizeMake(self.list.width, 120);
        connectionItem.rule = BeeUIScrollLayoutRule_Tile;
    };
}

ON_DELETE_VIEWS( signal )
{
}

ON_LAYOUT_VIEWS( signal )
{
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

/*新的人脉*/
ON_SIGNAL3( CardAddCell_iPhone, add_connection, signal )
{
    NSLog(@"新的人脉");
}

/*分组*/
ON_SIGNAL3( CardAddCell_iPhone, card_group, signal )
{
    NSLog(@"分组");
}
@end
