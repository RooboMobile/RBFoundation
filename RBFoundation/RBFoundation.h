//
//  RBFoundation.h
//  Pods
//
//  Created by baxiang on 2017/9/27.
//

#import <Foundation/Foundation.h>
#if __has_include(<RBFoundation/RBFoundation.h>)
#import <RBFoundation/RBFileManager.h>
#import <RBFoundation/NSData+RBExtension.h>
#import <RBFoundation/NSArray+RBExtension.h>
#import <RBFoundation/NSDictionary+RBExtension.h>
#import <RBFoundation/NSNotificationCenter+RBExtension.h>
#import <RBFoundation/NSString+RBExtension.h>
#import <RBFoundation/RBFoundationMacro.h>
#import <RBFoundation/NSDate+RBExtension.h>

#else
#include "RBFileManager.h"
#import "NSData+RBExtension.h"
#import "NSArray+RBExtension.h"
#import "NSDictionary+RBExtension.h"
#import "NSNotificationCenter+RBExtension.h"
#import "NSString+RBExtension.h"
#import "RBFoundationMacro.h"
#import "NSDate+RBExtension.h"
#endif
