//
//  Utils.h
//  QSPhotoSelect
//
//  Created by ZJ-Jie on 2017/3/28.
//  Copyright © 2017年 ZJ-Jie. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ConfirmHandle)();

@interface Utils : NSObject

+ (void)showAlertViewWithController:(UIViewController *)controller title:(NSString *)title message:(NSString *)message confirmButton:(ConfirmHandle)handle;

@end
