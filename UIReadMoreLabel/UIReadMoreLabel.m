//
//  ReadMoreLabel.m
//  Toluna 4.0
//
//  Created by amir hayek on 4/23/14.
//  Copyright (c) 2014 amir hayek. All rights reserved.
//
//  This source code is licensed under the The MIT License (MIT) license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "UIReadMoreLabel.h"

#define kCharacterSkipLength    5

@implementation UIReadMoreLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _truncationString = @" ...More";
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _truncationString = @" ...More";
        [self setText:self.text];
    }
    return self;
}

-(void)setText:(NSString *)text
{
    [super setText:text];
    _isTruncated = [self checkTruncation];
    if (_isTruncated) {
        NSMutableAttributedString* attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
        [attributedString setAttributes:@{NSFontAttributeName:self.font}
                                  range:NSMakeRange(0, self.attributedText.length-_truncationString.length)];
        [attributedString setAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue-CondensedBold" size:self.font.pointSize],
                                          NSForegroundColorAttributeName:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3]}
                                  range:NSMakeRange(self.attributedText.length-_truncationString.length, _truncationString.length)];
        [self setAttributedText:attributedString];
    }
}

-(BOOL)checkTruncation
{
    BOOL isTruncated = NO;
    BOOL wasAdjustsFontSizeToFitWidth = self.adjustsFontSizeToFitWidth;
    
    CGFloat fontSize = self.font.pointSize;
    
    float height = self.frame.size.height;
    
    if (self.adjustsFontSizeToFitWidth) {
        [self setFont:[UIFont fontWithName:self.font.fontName size:fontSize * self.minimumScaleFactor]]; //set to smallest font
        [self setAdjustsFontSizeToFitWidth:NO];
    }
    
    float fitHeight = [self sizeThatFits:self.frame.size].height;
    
    if ([self sizeThatFits:self.frame.size].height >= height && _truncationString.length > 0) {
        NSString* fullText = self.text;
        [super setText:@""];
        int i = 0;
        
        NSString* lastGoodText;
        
        while ((fitHeight = [self sizeThatFits:self.frame.size].height) <= height && i < fullText.length) {
            isTruncated = YES;
            NSString* shorterText = self.text;
            
            shorterText = [fullText substringToIndex:i];
            shorterText = [NSString stringWithFormat:@"%@%@", shorterText, _truncationString];
            lastGoodText = self.text;
            [super setText:shorterText];
            
            i += kCharacterSkipLength;
        }
        [super setText:lastGoodText];
        
    }
    
    if ((fitHeight / (self.minimumScaleFactor*fontSize)) > 3.0) {// if more that ~3 lines align left
        [self setTextAlignment:NSTextAlignmentNatural];
    }else{
        [self setTextAlignment:NSTextAlignmentCenter];
    }
    
    [self setAdjustsFontSizeToFitWidth:wasAdjustsFontSizeToFitWidth];
    if (isTruncated == NO) {
        [self setFont:[UIFont fontWithName:self.font.fontName size:fontSize]];
    }
    
    return isTruncated;
}

@end
