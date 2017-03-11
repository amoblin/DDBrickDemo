//
//  DDBaseViewModel.h
//  Bee
//
//  Created by amoblin on 16/9/1.
//  Copyright © 2016年 didi. All rights reserved.
//

#import "DDBaseData.h"

@interface DDBaseViewModel : DDBaseData

#if TARGET_OS_IPHONE

- (NSData *)compressImage:(UIImage *)img;

#endif

@end
