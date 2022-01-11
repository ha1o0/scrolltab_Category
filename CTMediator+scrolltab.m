//
//  CTMediator+scrolltab.m
//  CTMediator
//
//  Created by sidney on 2022/1/11.
//

#import "CTMediator+scrolltab.h"

@implementation CTMediator (scrolltab)

- (UIViewController *)get_scrolltabViewController {
    return [self performTarget:@"scrolltab" action:@"viewController" params:nil shouldCacheTarget:NO];
}

- (UIViewController *)scrolltab_Category_Swift_ViewControllerWithCallback:(void (^)(NSString *))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    params[kCTMediatorParamsKeySwiftTargetModuleName] = @"A_swift";
    return [self performTarget:@"scrolltab" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}

- (UIViewController *)scrolltab_Category_Objc_ViewControllerWithCallback:(void (^)(NSString *))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"scrolltab" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}

@end
