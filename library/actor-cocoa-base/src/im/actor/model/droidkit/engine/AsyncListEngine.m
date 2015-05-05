//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/AsyncListEngine.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/AsyncListEngine.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserCreator.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/engine/AsyncListEngine.h"
#include "im/actor/model/droidkit/engine/AsyncStorageInt.h"
#include "im/actor/model/droidkit/engine/ListEngineDisplayListener.h"
#include "im/actor/model/droidkit/engine/ListEngineDisplayLoadCallback.h"
#include "im/actor/model/droidkit/engine/ListEngineItem.h"
#include "im/actor/model/droidkit/engine/ListStorageDisplayEx.h"
#include "im/actor/model/droidkit/engine/ObjectCache.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/concurrent/CopyOnWriteArrayList.h"

@interface DKAsyncListEngine () {
 @public
  DKAsyncStorageInt *asyncStorageInt_;
  DKObjectCache *cache_;
  id LOCK_;
  JavaUtilConcurrentCopyOnWriteArrayList *listeners_;
}

- (id<DKListEngineDisplayLoadCallback>)coverWithDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback;

@end

J2OBJC_FIELD_SETTER(DKAsyncListEngine, asyncStorageInt_, DKAsyncStorageInt *)
J2OBJC_FIELD_SETTER(DKAsyncListEngine, cache_, DKObjectCache *)
J2OBJC_FIELD_SETTER(DKAsyncListEngine, LOCK_, id)
J2OBJC_FIELD_SETTER(DKAsyncListEngine, listeners_, JavaUtilConcurrentCopyOnWriteArrayList *)

__attribute__((unused)) static id<DKListEngineDisplayLoadCallback> DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(DKAsyncListEngine *self, id<DKListEngineDisplayLoadCallback> callback);

@interface DKAsyncListEngine_$1 : NSObject < DKListEngineDisplayLoadCallback > {
 @public
  DKAsyncListEngine *this$0_;
  id<DKListEngineDisplayLoadCallback> val$callback_;
}

- (void)onLoadedWithJavaUtilList:(id<JavaUtilList>)items
                        withLong:(jlong)topSortKey
                        withLong:(jlong)bottomSortKey;

- (instancetype)initWithDKAsyncListEngine:(DKAsyncListEngine *)outer$
      withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(DKAsyncListEngine_$1)

J2OBJC_FIELD_SETTER(DKAsyncListEngine_$1, this$0_, DKAsyncListEngine *)
J2OBJC_FIELD_SETTER(DKAsyncListEngine_$1, val$callback_, id<DKListEngineDisplayLoadCallback>)

__attribute__((unused)) static void DKAsyncListEngine_$1_initWithDKAsyncListEngine_withDKListEngineDisplayLoadCallback_(DKAsyncListEngine_$1 *self, DKAsyncListEngine *outer$, id<DKListEngineDisplayLoadCallback> capture$0);

__attribute__((unused)) static DKAsyncListEngine_$1 *new_DKAsyncListEngine_$1_initWithDKAsyncListEngine_withDKListEngineDisplayLoadCallback_(DKAsyncListEngine *outer$, id<DKListEngineDisplayLoadCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(DKAsyncListEngine_$1)


#line 14
@implementation DKAsyncListEngine


#line 22
- (instancetype)initWithDKListStorageDisplayEx:(id<DKListStorageDisplayEx>)storage
                             withBSBserCreator:(id<BSBserCreator>)creator {
  DKAsyncListEngine_initWithDKListStorageDisplayEx_withBSBserCreator_(self, storage, creator);
  return self;
}


#line 29
- (void)addOrUpdateItemWithBSBserObject:(BSBserObject<DKListEngineItem> *)item {
  @synchronized(LOCK_) {
    
#line 32
    [((DKObjectCache *) nil_chk(cache_)) onObjectUpdatedWithId:JavaLangLong_valueOfWithLong_([((BSBserObject<DKListEngineItem> *) nil_chk(item)) getEngineId]) withId:item];
    
#line 34
    id<JavaUtilList> items = new_JavaUtilArrayList_init();
    [items addWithId:item];
    [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) addOrUpdateItemsWithJavaUtilList:items];
    
#line 38
    for (id<DKListEngineDisplayListener> __strong l in nil_chk(listeners_)) {
      [((id<DKListEngineDisplayListener>) nil_chk(l)) addOrUpdateWithId:item];
    }
  }
}


#line 45
- (void)addOrUpdateItemsWithJavaUtilList:(id<JavaUtilList>)items {
  @synchronized(LOCK_) {
    
#line 49
    for (BSBserObject<DKListEngineItem> * __strong i in nil_chk(items)) {
      [((DKObjectCache *) nil_chk(cache_)) onObjectUpdatedWithId:JavaLangLong_valueOfWithLong_([((BSBserObject<DKListEngineItem> *) nil_chk(i)) getEngineId]) withId:i];
    }
    
#line 53
    [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) addOrUpdateItemsWithJavaUtilList:items];
    
#line 55
    for (id<DKListEngineDisplayListener> __strong l in nil_chk(listeners_)) {
      [((id<DKListEngineDisplayListener>) nil_chk(l)) addOrUpdateWithJavaUtilList:items];
    }
  }
}


#line 62
- (void)replaceItemsWithJavaUtilList:(id<JavaUtilList>)items {
  @synchronized(LOCK_) {
    
#line 66
    [((DKObjectCache *) nil_chk(cache_)) clear];
    for (BSBserObject<DKListEngineItem> * __strong i in nil_chk(items)) {
      [cache_ onObjectUpdatedWithId:JavaLangLong_valueOfWithLong_([((BSBserObject<DKListEngineItem> *) nil_chk(i)) getEngineId]) withId:i];
    }
    
#line 71
    [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) replaceItemsWithJavaUtilList:items];
    
#line 74
    for (id<DKListEngineDisplayListener> __strong l in nil_chk(listeners_)) {
      [((id<DKListEngineDisplayListener>) nil_chk(l)) onItemsReplacedWithJavaUtilList:items];
    }
  }
}

- (void)removeItemWithLong:(jlong)key {
  @synchronized(LOCK_) {
    [((DKObjectCache *) nil_chk(cache_)) removeObjectWithId:JavaLangLong_valueOfWithLong_(key)];
    [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) removeWithLongArray:[IOSLongArray newArrayWithLongs:(jlong[]){ key } count:1]];
    
#line 86
    for (id<DKListEngineDisplayListener> __strong l in nil_chk(listeners_)) {
      [((id<DKListEngineDisplayListener>) nil_chk(l)) onItemRemovedWithLong:key];
    }
  }
}

- (void)removeItemsWithLongArray:(IOSLongArray *)keys {
  @synchronized(LOCK_) {
    {
      IOSLongArray *a__ =
#line 95
      keys;
      jlong const *b__ = ((IOSLongArray *) nil_chk(a__))->buffer_;
      jlong const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        jlong key = *b__++;
        
#line 96
        [((DKObjectCache *) nil_chk(cache_)) removeObjectWithId:JavaLangLong_valueOfWithLong_(key)];
      }
    }
    
#line 98
    [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) removeWithLongArray:keys];
    
#line 100
    for (id<DKListEngineDisplayListener> __strong l in nil_chk(listeners_)) {
      [((id<DKListEngineDisplayListener>) nil_chk(l)) onItemsRemovedWithLongArray:keys];
    }
  }
}


#line 107
- (void)clear {
  @synchronized(LOCK_) {
    [((DKObjectCache *) nil_chk(cache_)) clear];
    [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) clear];
    
#line 112
    for (id<DKListEngineDisplayListener> __strong l in nil_chk(listeners_)) {
      [((id<DKListEngineDisplayListener>) nil_chk(l)) onListClear];
    }
  }
}

- (id)getValueWithLong:(jlong)key {
  @synchronized(LOCK_) {
    BSBserObject<DKListEngineItem> *res = [((DKObjectCache *) nil_chk(cache_)) lookupWithId:JavaLangLong_valueOfWithLong_(key)];
    if (res != nil) {
      return res;
    }
  }
  
#line 127
  BSBserObject<DKListEngineItem> *res = [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) getValueWithLong:key];
  
#line 129
  if (res != nil) {
    @synchronized(LOCK_) {
      [cache_ onObjectLoadedWithId:JavaLangLong_valueOfWithLong_(key) withId:res];
    }
  }
  return res;
}

- (id)getHeadValue {
  BSBserObject<DKListEngineItem> *res = [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) getHeadValue];
  
#line 142
  if (res != nil) {
    @synchronized(LOCK_) {
      [((DKObjectCache *) nil_chk(cache_)) onObjectLoadedWithId:JavaLangLong_valueOfWithLong_([res getEngineId]) withId:res];
    }
  }
  
#line 148
  return res;
}


#line 152
- (jboolean)isEmpty {
  
#line 154
  return [self getCount] == 0;
}

- (jint)getCount {
  return [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) getCount];
}


#line 165
- (void)subscribeWithDKListEngineDisplayListener:(id<DKListEngineDisplayListener>)listener {
  if (![((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(listeners_)) containsWithId:listener]) {
    [listeners_ addWithId:listener];
  }
}


#line 172
- (void)unsubscribeWithDKListEngineDisplayListener:(id<DKListEngineDisplayListener>)listener {
  [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(listeners_)) removeWithId:listener];
}


#line 177
- (void)loadForwardWithInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadForwardWithNSString:nil withJavaLangLong:nil withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}

- (void)loadForwardWithLong:(jlong)afterSortKey
                    withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadForwardWithNSString:nil withJavaLangLong:JavaLangLong_valueOfWithLong_(afterSortKey) withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}


#line 187
- (void)loadForwardWithNSString:(NSString *)query
                        withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadForwardWithNSString:query withJavaLangLong:nil withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}


#line 192
- (void)loadForwardWithNSString:(NSString *)query
                       withLong:(jlong)afterSortKey
                        withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadForwardWithNSString:query withJavaLangLong:JavaLangLong_valueOfWithLong_(afterSortKey) withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}


#line 197
- (void)loadBackwardWithInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadBackwardWithNSString:nil withJavaLangLong:nil withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}

- (void)loadBackwardWithLong:(jlong)beforeSortKey
                     withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadBackwardWithNSString:nil withJavaLangLong:JavaLangLong_valueOfWithLong_(beforeSortKey) withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}


#line 207
- (void)loadBackwardWithNSString:(NSString *)query
                         withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadBackwardWithNSString:query withJavaLangLong:nil withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}


#line 212
- (void)loadBackwardWithNSString:(NSString *)query
                        withLong:(jlong)beforeSortKey
                         withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadBackwardWithNSString:query withJavaLangLong:JavaLangLong_valueOfWithLong_(beforeSortKey) withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}


#line 217
- (void)loadCenterWithLong:(jlong)centerSortKey
                   withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  [((DKAsyncStorageInt *) nil_chk(asyncStorageInt_)) loadCenterWithLong:centerSortKey withInt:limit withDKListEngineDisplayLoadCallback:DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback)];
}


#line 221
- (id<DKListEngineDisplayLoadCallback>)coverWithDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  return DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(self, callback);
}

@end


#line 22
void DKAsyncListEngine_initWithDKListStorageDisplayEx_withBSBserCreator_(DKAsyncListEngine *self, id<DKListStorageDisplayEx> storage, id<BSBserCreator> creator) {
  (void) NSObject_init(self);
  self->cache_ = new_DKObjectCache_init();
  self->LOCK_ = new_NSObject_init();
  self->listeners_ = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  
#line 23
  self->asyncStorageInt_ = new_DKAsyncStorageInt_initWithDKListStorageDisplayEx_withBSBserCreator_(storage, creator);
}


#line 22
DKAsyncListEngine *new_DKAsyncListEngine_initWithDKListStorageDisplayEx_withBSBserCreator_(id<DKListStorageDisplayEx> storage, id<BSBserCreator> creator) {
  DKAsyncListEngine *self = [DKAsyncListEngine alloc];
  DKAsyncListEngine_initWithDKListStorageDisplayEx_withBSBserCreator_(self, storage, creator);
  return self;
}


#line 221
id<DKListEngineDisplayLoadCallback> DKAsyncListEngine_coverWithDKListEngineDisplayLoadCallback_(DKAsyncListEngine *self, id<DKListEngineDisplayLoadCallback> callback) {
  return new_DKAsyncListEngine_$1_initWithDKAsyncListEngine_withDKListEngineDisplayLoadCallback_(self, callback);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAsyncListEngine)

@implementation DKAsyncListEngine_$1


#line 224
- (void)onLoadedWithJavaUtilList:(id<JavaUtilList>)items
                        withLong:(jlong)topSortKey
                        withLong:(jlong)bottomSortKey {
  @synchronized(this$0_->LOCK_) {
    for (BSBserObject<DKListEngineItem> * __strong i in nil_chk(items)) {
      [((DKObjectCache *) nil_chk(this$0_->cache_)) onObjectLoadedWithId:JavaLangLong_valueOfWithLong_([((BSBserObject<DKListEngineItem> *) nil_chk(i)) getEngineId]) withId:i];
    }
  }
  [((id<DKListEngineDisplayLoadCallback>) nil_chk(val$callback_)) onLoadedWithJavaUtilList:items withLong:topSortKey withLong:bottomSortKey];
}

- (instancetype)initWithDKAsyncListEngine:(DKAsyncListEngine *)outer$
      withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)capture$0 {
  DKAsyncListEngine_$1_initWithDKAsyncListEngine_withDKListEngineDisplayLoadCallback_(self, outer$, capture$0);
  return self;
}

@end

void DKAsyncListEngine_$1_initWithDKAsyncListEngine_withDKListEngineDisplayLoadCallback_(DKAsyncListEngine_$1 *self, DKAsyncListEngine *outer$, id<DKListEngineDisplayLoadCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

DKAsyncListEngine_$1 *new_DKAsyncListEngine_$1_initWithDKAsyncListEngine_withDKListEngineDisplayLoadCallback_(DKAsyncListEngine *outer$, id<DKListEngineDisplayLoadCallback> capture$0) {
  DKAsyncListEngine_$1 *self = [DKAsyncListEngine_$1 alloc];
  DKAsyncListEngine_$1_initWithDKAsyncListEngine_withDKListEngineDisplayLoadCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAsyncListEngine_$1)
