//
//  UILabel+ColorText.h
//  ColorLabel
//
//  Created by Alex on 16/3/11.
//  Copyright © 2016年 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ColorText)

/**
 *  设置字体颜色
 *
 *  @param textColor 字体颜色
 *  @param rangeText 要变色的Text
 */
- (void)setTextColor:(UIColor *)textColor rangeText:(NSString *)rangeText;

/**
 *  设置字体颜色
 *
 *  @param textColor 字体颜色
 *  @param rangeText 要变色的Text
 *  @param rangeFont 要变色的Font
 */
- (void)setTextColor:(UIColor *)textColor rangeText:(NSString *)rangeText rangeFont:(UIFont *)rangeFont;

/**
 *  添加删除线
 *
 *  @param lineColor
 *  @param rangeText 删除文字
 */
-(void)setTextDeleteLine:(UIColor *)lineColor rangeText:(NSString *)rangeText;

/**
 *  文字图片混排
 *
 *  @param image 图片
 *  @param size  图片Size
 *  @param range Range
 */
-(void)addImgAttachment:(UIImage *)image size:(CGSize)size range:(NSRange)range;

@end
