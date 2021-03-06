//
//  SUPUpLoadImageCell.h
//  SuperProject
//
//  Created by NShunJian on 2018/4/20.
//  Copyright © 2018年 superMan. All rights reserved.
// 

#import <UIKit/UIKit.h>

@interface SUPUpLoadImageCell : UICollectionViewCell

/** <#digest#> */
@property (nonatomic, strong) UIImage *photoImage;

/** <#digest#> */
@property (nonatomic, copy) void(^deletePhotoClick)(UIImage *photoImage);

/** <#digest#> */
@property (nonatomic, copy) void(^addPhotoClick)(SUPUpLoadImageCell *uploadImageCell);

/** <#digest#> */
@property (nonatomic, assign) CGFloat uploadProgress;

@end
