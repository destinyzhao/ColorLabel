//
//  UILabel+ColorText.m
//  ColorLabel
//
//  Created by Alex on 16/3/11.
//  Copyright © 2016年 Alex. All rights reserved.
//

#import "UILabel+ColorText.h"

@implementation UILabel (ColorText)

/**
 *  设置字体颜色
 *
 *  @param textColor 字体颜色
 *  @param rangeText 要变色的Text
 */
- (void)setTextColor:(UIColor *)textColor rangeText:(NSString *)rangeText
{
    NSRange range = [self.text rangeOfString:rangeText];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithAttributedString: self.attributedText];
    [attrString addAttribute: NSForegroundColorAttributeName
                       value: textColor
                       range: range];
    
    [self setAttributedText: attrString];
}

/**
 *  设置字体颜色
 *
 *  @param textColor 字体颜色
 *  @param rangeText 要变色的Text
 *  @param rangeFont 要变色的Font
 */
- (void)setTextColor:(UIColor *)textColor rangeText:(NSString *)rangeText rangeFont:(UIFont *)rangeFont
{
    NSRange range = [self.text rangeOfString:rangeText];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithAttributedString: self.attributedText];
    [attrString addAttribute: NSForegroundColorAttributeName value: textColor range: range];
    [attrString addAttribute:NSFontAttributeName value:rangeFont range:range];
    
    [self setAttributedText: attrString];
}

/**
 *  添加删除线
 *
 *  @param lineColor
 *  @param rangeText 删除文字
 */
-(void)setTextDeleteLine:(UIColor *)lineColor rangeText:(NSString *)rangeText
{
    NSRange range = [self.text rangeOfString:rangeText];
    NSMutableAttributedString *text = [self.attributedText mutableCopy];
    [text addAttribute:NSStrikethroughStyleAttributeName
                 value:@(YES)
                 range:range];
    [text addAttribute:NSUnderlineColorAttributeName value:lineColor range:range];
    self.attributedText = text;
}

/**
 *  文字图片混排
 *
 *  @param image 图片
 *  @param size  图片Size
 *  @param range Range
 */
-(void)addImgAttachment:(UIImage *)image size:(CGSize)size range:(NSRange)range
{
    NSMutableAttributedString *text = [self.attributedText mutableCopy];
    NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
    textAttachment.image = [self imageWithImage:image scaleToSize:size];
    
    NSAttributedString *iconAttributedString = [NSAttributedString attributedStringWithAttachment:textAttachment];
    [text replaceCharactersInRange:range withAttributedString:iconAttributedString];
    self.attributedText = text;
}

-(UIImage*)imageWithImage:(UIImage*)image scaleToSize:(CGSize)newSize
{
    // Create a graphics image context
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
