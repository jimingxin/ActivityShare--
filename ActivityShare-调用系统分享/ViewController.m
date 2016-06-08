//
//  ViewController.m
//  ActivityShare-调用系统分享
//
//  Created by 嵇明新 on 16/6/8.
//  Copyright © 2016年 lanhe. All rights reserved.
//

#import "ViewController.h"
#import "ZSCustomActivity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  调用系统分享
 *  UIActivityViewController相比于UIDocumentInteractionController优势除了可以添加额外的自定义服务，它还提供了非常好的原生服务的定制化功能。我们可以完全根据自己的需求，控制UIActivityViewController提供的系统服务的显示，比如我不想展示AirDrop这个功能，而这点在UIDocumentInteractionController是做不到的。想做到这一点，就需要使用到UIActivityViewController提供的一个属性:
 *  @param sender <#sender description#>
 */
-(IBAction)shareActivityAction:(UIButton *)sender{
    
    UIActivityViewController *activity = [[UIActivityViewController alloc] initWithActivityItems:@[@"系统分享"] applicationActivities:@[[[ZSCustomActivity alloc] init]]];
    
    //activity.excludedActivityTypes = @[UIActivityTypeAirDrop];
    
    UIPopoverPresentationController *popoveView = activity.popoverPresentationController;
    if (popoveView) {
        popoveView.sourceView = nil;
        popoveView.permittedArrowDirections = UIPopoverArrowDirectionUp;
    }
    
    [self presentViewController:activity animated:YES completion:nil];

}

@end
