//
//  Utils.m
//  QSPhotoSelect
//
//  Created by ZJ-Jie on 2017/3/28.
//  Copyright © 2017年 ZJ-Jie. All rights reserved.
//

#import "Utils.h"


@implementation Utils



+ (void)showAlertViewWithController:(UIViewController *)controller title:(NSString *)title message:(NSString *)message confirmButton:(ConfirmHandle)handle {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (!handle) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"了解" style:UIAlertActionStyleCancel handler:nil];
        [alertController addAction:cancelAction];
    } else {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:handle];
        [alertController addAction:cancelAction];
        [alertController addAction:okAction];
    }
    [controller presentViewController:alertController animated:YES completion:nil];
}


@end
