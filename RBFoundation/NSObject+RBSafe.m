//
//  NSObject+RBSafe.m
//  Pods
//
//  Created by baxiang on 2017/9/28.
//

#import "NSObject+RBSafe.h"

@implementation NSObject (RBSafe)
/**
 根据key 获取object
 */
- (id)safeObjectForKey:(id)aKey
{
    id object = nil;
    
    if([self isKindOfClass:[NSDictionary class]] ){
        object = [(NSDictionary *)self objectForKey:aKey];
        
    }else if ([self isKindOfClass:[NSUserDefaults class]]){
        object = [(NSUserDefaults *)self objectForKey:aKey];
    }
    
    return object;
}

/**
 根据key 移除键值对
 */
- (void)safeRemoveObjectForKey:(id)aKey
{
    if(aKey != nil && ![aKey isKindOfClass:[NSNull class]] && [self isKindOfClass:[NSMutableDictionary class]]){
        [(NSMutableDictionary *)self removeObjectForKey:aKey];
    }
}

/**
 获取index 上元素
 */
- (id)safeObjectAtIndex:(NSUInteger)index
{
    if([self isKindOfClass:[NSArray class]] && index < [(NSArray*)self count]){
        return [(NSArray *)self objectAtIndex:index];
    }
    return nil;
    
}

/**
 数据添加元素
 */
- (void)safeAddObject:(id)anObject
{
    if([self isKindOfClass:[NSMutableArray class]] && anObject != nil && ![anObject isKindOfClass:[NSNull class]] ){
        [(NSMutableArray *)self addObject:anObject];
    }
}

/**
 在index 索引上移除一个元素
 */
- (void)safeRemoveObjectAtIndex:(NSUInteger)index
{
    if([self isKindOfClass:[NSMutableArray class]] && index < [(NSMutableArray*)self count]){
        [(NSMutableArray *)self removeObjectAtIndex:index];
    }
    
}
/**
 替换 index 元素
 */
- (void)safeReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject
{
    if([self isKindOfClass:[NSMutableArray class]] && index < [(NSMutableArray*)self count] && anObject != nil && ![anObject isKindOfClass:[NSNull class]]){
        [(NSMutableArray *)self replaceObjectAtIndex:index withObject:anObject];
    }
}

- (NSUInteger)strLength
{
    if([self isKindOfClass:[NSString class]]){
        return [(NSString *)self length];
    }
    return 0;
}


/**
 根据索引获取 char
 */
- (unichar)safeCharAtIndex:(NSUInteger)index{
    if(index < [self strLength]){
        return [(NSString *)self characterAtIndex:index];
    }
    return 0;
}


/**
 根据 Range 获取 char *
 */
- (void)safeGetCharacters:(unichar *)buffer range:(NSRange)aRange{
    if([self strLength] > (aRange.length + aRange.location)){
        [(NSString *)self getCharacters:buffer range:aRange];
    }
}

/**
 从form 截取后面的字符串
 */
- (NSString *)safeSubstringFromIndex:(NSUInteger)from{
    if([self strLength] > from){
        return [(NSString *)self substringFromIndex:from];
    }
    return nil;
}
/**
 截取字符串到 to 的索引
 */
- (NSString *)safeSubstringToIndex:(NSUInteger)to{
    if([self strLength] >= to && to > 0){
        return [(NSString *)self substringToIndex:to];
    }
    return nil;
    
}
/**
 截取字符串 根据 Range
 */
- (NSString *)safeSubstringWithRange:(NSRange)range{
    if([self strLength] >= (range.length + range.location)){
        return [(NSString *)self substringWithRange:range];
    }
    return nil;
}

@end
