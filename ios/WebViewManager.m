//
//  WebViewManager.m
//  WebViewIos
//
//  Created by Amir Diafi on 12/13/22.
//  Copyright © 2022 Facebook. All rights reserved.
//

#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(WebViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(url, NSString)

@end
