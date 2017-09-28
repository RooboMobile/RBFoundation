//
//  NSObject+RBSafe.h
//  Pods
//
//  Created by baxiang on 2017/9/28.
//

#import <Foundation/Foundation.h>

@interface NSObject (RBSafe)

- (id)safeObjectForKey:(id)aKey;

- (void)safeAddObject:(id)anObject;

- (void)safeRemoveObjectForKey:(id)aKey;

- (void)safeRemoveObjectAtIndex:(NSUInteger)index;

- (void)safeReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

- (id)safeObjectAtIndex:(NSUInteger)index;

- (unichar)safeCharAtIndex:(NSUInteger)index;

- (void)safeGetCharacters:(unichar *)buffer range:(NSRange)aRange;

- (NSString *)safeSubstringFromIndex:(NSUInteger)from;

- (NSString *)safeSubstringToIndex:(NSUInteger)to;

- (NSString *)safeSubstringWithRange:(NSRange)range;

@end
