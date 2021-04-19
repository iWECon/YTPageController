//
//  YTCollectionView.m
//  
//
//  Created by iWw on 2021/1/20.
//

#import "YTCollectionView.h"

@implementation YTCollectionView

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    if (_gestureDelegate && [_gestureDelegate respondsToSelector:@selector(gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:)]) {
        return [_gestureDelegate gestureRecognizer:gestureRecognizer
                 shouldRecognizeSimultaneouslyWithGestureRecognizer:otherGestureRecognizer];
    }
    return NO;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    if (_gestureDelegate && [_gestureDelegate respondsToSelector:@selector(gestureRecognizer:shouldRequireFailureOfGestureRecognizer:)]) {
        if ([NSStringFromClass([otherGestureRecognizer class]) isEqualToString:@"_UISwipeActionPanGestureRecognizer"] && [gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]) {
            return YES;
        }
        return [_gestureDelegate gestureRecognizer:gestureRecognizer
           shouldRequireFailureOfGestureRecognizer:otherGestureRecognizer];
    }
    return NO;
}

@end
