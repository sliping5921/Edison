//
//  Edi_Tablebar.m
//  起名大全
//
//  Created by 陈晓宇 on 2021/5/26.
//

#import "Edi_Tablebar.h"
#import "Edi_QmVC.h"
#import "Edi_JmVC.h"
#import "Edi_FxVC.h"
#import "Edi_WdVC.h"
@interface Edi_Tablebar(){
    UIEdgeInsets CJInseter;
    UIOffset CjOffserer;
}

@end

@implementation Edi_Tablebar

- (CYLTabBarController *)EdiObj
{
    if (!_EdiObj) {
        CJInseter  = UIEdgeInsetsZero;
        CjOffserer = UIOffsetZero;
        CYLTabBarController *InsitabConller = [CYLTabBarController tabBarControllerWithViewControllers:[self CJPRonisntViewAr] tabBarItemsAttributes:[self CJPImtisnmAr] imageInsets:CJInseter titlePositionAdjustment:CjOffserer];
        [self CJpCusnitmsier:InsitabConller];
        _EdiObj = InsitabConller;
    }
    return _EdiObj;
}

- (NSArray *)CJPRonisntViewAr {
    
    Edi_QmVC *HlmRview = [[Edi_QmVC alloc] init];
    EasyNavigationController *hlmNav = [[EasyNavigationController alloc]initWithRootViewController:HlmRview];
    Edi_JmVC *NwnRview = [[Edi_JmVC alloc] init];
    EasyNavigationController *nwnNav = [[EasyNavigationController alloc]initWithRootViewController:NwnRview];
    Edi_FxVC *MipRview = [[Edi_FxVC alloc] init];
    EasyNavigationController *mipNav = [[EasyNavigationController alloc]initWithRootViewController:MipRview];
    Edi_WdVC *Minsne = [[Edi_WdVC alloc] init];
    EasyNavigationController *Niser = [[EasyNavigationController alloc]initWithRootViewController:Minsne];
    
    NSArray *CJPAionVIArr = @[hlmNav,nwnNav,mipNav,Niser];
    return CJPAionVIArr;
}

- (NSArray *)CJPImtisnmAr {
    
    NSDictionary *HlmIomtn = @{
        CYLTabBarItemImage : @"ork3",
        CYLTabBarItemSelectedImage : @"ork4",
    };
    NSDictionary *NwnItmse = @{
        CYLTabBarItemImage : @"ork1",
        CYLTabBarItemSelectedImage : @"ork2",
    };
    NSDictionary *MipIomtn = @{
        CYLTabBarItemImage : @"ork5",
        CYLTabBarItemSelectedImage : @"ork6",
    };
    NSDictionary *Niwners = @{
        CYLTabBarItemImage : @"ork5",
        CYLTabBarItemSelectedImage : @"ork6",
    };
    
    NSArray *CJpImsitnArr = @[HlmIomtn,NwnItmse,MipIomtn,Niwners];
    return CJpImsitnArr;
}

- (void)CJpCusnitmsier:(CYLTabBarController *)tabBarController {
    
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    
    tabBarController.tabBarHeight = 57*HEIGHT;
    UITabBar *CjpApensmar = [UITabBar appearance];
    [CjpApensmar setBackgroundColor:TABCOLOR];
    [CjpApensmar setShadowImage:[[UIImage alloc]init]];
    [CjpApensmar setBackgroundImage:[[UIImage alloc]init]];
    
    
    EasyNavigationOptions *CJPEasyItools = [EasyNavigationOptions shareInstance];
    CJPEasyItools.buttonTitleFont = cFontB(16.2);
    CJPEasyItools.navBackGroundColor = NAVCOLOR;
    CJPEasyItools.titleColor = [UIColor blackColor];
    CJPEasyItools.navLineColor = CLEAR;
    CJPEasyItools.navigationBackButtonImageName = @"Buurt.png";
}



@end
