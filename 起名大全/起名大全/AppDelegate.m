//
//  AppDelegate.m
//  起名大全
//
//  Created by 陈晓宇 on 2021/5/26.
//

#import "AppDelegate.h"
#import "Edi_Tablebar.h"
@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    Edi_Tablebar *Orkctbat = [[Edi_Tablebar alloc] init];
    CYLTabBarController *ChYLtabbar = Orkctbat.EdiObj;
    ChYLtabbar.delegate = self;
    [self.window setRootViewController:ChYLtabbar];
    [self.window makeKeyAndVisible];
    
    return YES;
}




@end
