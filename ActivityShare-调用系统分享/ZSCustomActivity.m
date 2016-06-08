//
//  ZSCustomActivity.m
//  ZSDocumentInteractionTest
//
//  Created by bv-zheng on 1/4/16.
//  Copyright © 2016 Sera. All rights reserved.
//

#import "ZSCustomActivity.h"

NSString *const UIActivityTypeZSCustomMine = @"ZSCustomActivityMine";

@implementation ZSCustomActivity

- (NSString *)activityType
{
    return UIActivityTypeZSCustomMine;
}

- (NSString *)activityTitle
{
    return NSLocalizedString(@"自定义", @"");
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"ZS_60x60"];
}

+ (UIActivityCategory)activityCategory
{
    return UIActivityCategoryShare;
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    NSLog(@"activityItems = %@", activityItems);
    return YES;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems
{
    NSLog(@"Activity prepare");
}

- (void)performActivity
{
    NSLog(@"Activity run");
}

- (void)activityDidFinish:(BOOL)completed
{
    NSLog(@"Activity finish");
}

@end
