//
//  ReadMoreLabel.h
//  Toluna 4.0
//
//  Created by amir hayek on 4/23/14.
//  Copyright (c) 2014 amir hayek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIReadMoreLabel : UILabel

@property (strong, nonatomic) NSString* truncationString;
@property (readonly,assign, nonatomic) BOOL isTruncated;

@end
