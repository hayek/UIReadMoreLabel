//
//  ReadMoreLabel.h
//  Toluna 4.0
//
//  Created by amir hayek on 4/23/14.
//  Copyright (c) 2014 amir hayek. All rights reserved.
//
//  This source code is licensed under the The MIT License (MIT) license found in the
//  LICENSE file in the root directory of this source tree.
//

#import <UIKit/UIKit.h>

@interface UIReadMoreLabel : UILabel

@property (strong, nonatomic) NSString* truncationString;
@property (readonly,assign, nonatomic) BOOL isTruncated;

@end
