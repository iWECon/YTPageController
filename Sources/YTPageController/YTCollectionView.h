//
//  YTCollectionView.h
//  
//
//  Created by iWw on 2021/1/20.
//

#import <UIKit/UIkit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YTCollectionView : UICollectionView <UIGestureRecognizerDelegate>

@property (nullable, nonatomic, weak) id<UIGestureRecognizerDelegate> gestureDelegate;

@end

NS_ASSUME_NONNULL_END
