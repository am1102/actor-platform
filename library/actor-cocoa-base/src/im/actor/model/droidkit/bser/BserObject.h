//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/BserObject.java
//

#ifndef _BSBserObject_H_
#define _BSBserObject_H_

#include "J2ObjC_header.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface BSBserObject : NSObject

#pragma mark Public

- (instancetype)init;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (IOSByteArray *)toByteArray;

@end

J2OBJC_EMPTY_STATIC_INIT(BSBserObject)

FOUNDATION_EXPORT void BSBserObject_init(BSBserObject *self);

J2OBJC_TYPE_LITERAL_HEADER(BSBserObject)

typedef BSBserObject ImActorModelDroidkitBserBserObject;

#endif // _BSBserObject_H_
