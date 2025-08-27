// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeDisturbingView.m
//  Kitalker
//
//  Created by 刘 波 on 12-8-9.
//
//

// __M_A_C_R_O__
//: #import "KICropImageView.h"
#import "ModeDisturbingView.h"

//: @interface KICropImageMaskView : UIView {
@interface ToIconView : UIView {
//: @private
@private
    //: CGRect _cropRect;
    CGRect _cropRect;
}
//: - (void)setCropSize:(CGSize)size;
- (void)setInfo:(CGSize)size;
//: - (CGSize)cropSize;
- (CGSize)info;
//: @end
@end

//: @implementation KICropImageView
@implementation ModeDisturbingView

//: - (void)setFrame:(CGRect)frame {
- (void)setFrame:(CGRect)frame {
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: [[self scrollView] setFrame:self.bounds];
    [[self show] setFrame:self.bounds];
    //: [[self maskView] setFrame:self.bounds];
    [[self maskView] setFrame:self.bounds];

    //: if (__CGSizeEqualToSize(_cropSize, CGSizeZero)) {
    if (__CGSizeEqualToSize(_cropSize, CGSizeZero)) {
        //: [self setCropSize:CGSizeMake(100, 100)];
        [self setLengthSize:CGSizeMake(100, 100)];
    }
}

//: - (UIScrollView *)scrollView {
- (UIScrollView *)show {
    //: if (_scrollView == nil) {
    if (_scrollView == nil) {
        //: _scrollView = [[UIScrollView alloc] init];
        _scrollView = [[UIScrollView alloc] init];
        //: [_scrollView setDelegate:self];
        [_scrollView setDelegate:self];
        //: [_scrollView setBounces:NO];
        [_scrollView setBounces:NO];
        //: [_scrollView setShowsHorizontalScrollIndicator:NO];
        [_scrollView setShowsHorizontalScrollIndicator:NO];
        //: [_scrollView setShowsVerticalScrollIndicator:NO];
        [_scrollView setShowsVerticalScrollIndicator:NO];
        //: [self addSubview:_scrollView];
        [self addSubview:_scrollView];
    }
    //: return _scrollView;
    return _scrollView;
}

//: - (UIImageView *)imageView {
- (UIImageView *)imageBirdSEyeView {
    //: if (_imageView == nil) {
    if (_imageView == nil) {
        //: _imageView = [[UIImageView alloc] init];
        _imageView = [[UIImageView alloc] init];
        //: [[self scrollView] addSubview:_imageView];
        [[self show] addSubview:_imageView];
    }
    //: return _imageView;
    return _imageView;
}

//: - (KICropImageMaskView *)maskView {
- (ToIconView *)maskView {
    //: if (_maskView == nil) {
    if (_maskView == nil) {
        //: _maskView = [[KICropImageMaskView alloc] init];
        _maskView = [[ToIconView alloc] init];
        //: [_maskView setBackgroundColor:[UIColor clearColor]];
        [_maskView setBackgroundColor:[UIColor clearColor]];
        //: [_maskView setUserInteractionEnabled:NO];
        [_maskView setUserInteractionEnabled:NO];
        //: [self addSubview:_maskView];
        [self addSubview:_maskView];
        //: [self bringSubviewToFront:_maskView];
        [self bringSubviewToFront:_maskView];
    }
    //: return _maskView;
    return _maskView;
}

//: - (void)setImage:(UIImage *)image {
- (void)setProximate:(UIImage *)image {
    //: if (image != _image) {
    if (image != _image) {
        //: _image = image;
        _image = image;
    }
    //: [[self imageView] setImage:_image];
    [[self imageBirdSEyeView] setImage:_image];

    //: [self updateZoomScale];
    [self model];
}

//: - (void)updateZoomScale {
- (void)model {
    //: CGFloat width = _image.size.width;
    CGFloat width = _image.size.width;
    //: CGFloat height = _image.size.height;
    CGFloat height = _image.size.height;

    //: [[self imageView] setFrame:CGRectMake(0, 0, width, height)];
    [[self imageBirdSEyeView] setFrame:CGRectMake(0, 0, width, height)];

    //: CGFloat xScale = _cropSize.width / width;
    CGFloat xScale = _cropSize.width / width;
    //: CGFloat yScale = _cropSize.height / height;
    CGFloat yScale = _cropSize.height / height;

    //: CGFloat min = ((xScale) > (yScale) ? (xScale) : (yScale));
    CGFloat min = ((xScale) > (yScale) ? (xScale) : (yScale));
    //: CGFloat max = 1.0;
    CGFloat max = 1.0;
//    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
//        max = 1.0 / [[UIScreen mainScreen] scale];
//    }

    //: if (min > max) {
    if (min > max) {
        //: min = max;
        min = max;
    }

    //: [[self scrollView] setMinimumZoomScale:min];
    [[self show] setMinimumZoomScale:min];
    //: [[self scrollView] setMaximumZoomScale:max + 5.0f];
    [[self show] setMaximumZoomScale:max + 5.0f];

    //: [[self scrollView] setZoomScale:min animated:YES];
    [[self show] setZoomScale:min animated:YES];
}

//: - (void)setCropSize:(CGSize)size {
- (void)setLengthSize:(CGSize)size {
    //: _cropSize = size;
    _cropSize = size;
    //: [self updateZoomScale];
    [self model];

    //: CGFloat width = _cropSize.width;
    CGFloat width = _cropSize.width;
    //: CGFloat height = _cropSize.height;
    CGFloat height = _cropSize.height;

    //: CGFloat x = (CGRectGetWidth(self.bounds) - width) / 2;
    CGFloat x = (CGRectGetWidth(self.bounds) - width) / 2;
    //: CGFloat y = (CGRectGetHeight(self.bounds) - height) / 2;
    CGFloat y = (CGRectGetHeight(self.bounds) - height) / 2;

    //: [(KICropImageMaskView *)[self maskView] setCropSize:_cropSize];
    [(ToIconView *)[self maskView] setInfo:_cropSize];

    //: CGFloat top = y;
    CGFloat top = y;
    //: CGFloat left = x;
    CGFloat left = x;
    //: CGFloat right = CGRectGetWidth(self.bounds)- width - x;
    CGFloat right = CGRectGetWidth(self.bounds)- width - x;
    //: CGFloat bottom = CGRectGetHeight(self.bounds)- height - y;
    CGFloat bottom = CGRectGetHeight(self.bounds)- height - y;
    //: _imageInset = UIEdgeInsetsMake(top, left, bottom, right);
    _imageInset = UIEdgeInsetsMake(top, left, bottom, right);
    //: [[self scrollView] setContentInset:_imageInset];
    [[self show] setContentInset:_imageInset];

    //: [[self scrollView] setContentOffset:CGPointMake(0, 0)];
    [[self show] setContentOffset:CGPointMake(0, 0)];
}

//: - (UIImage *)cropImage {
- (UIImage *)memoryImage {
    //: CGFloat zoomScale = [self scrollView].zoomScale;
    CGFloat zoomScale = [self show].zoomScale;

    //: CGFloat offsetX = [self scrollView].contentOffset.x;
    CGFloat offsetX = [self show].contentOffset.x;
    //: CGFloat offsetY = [self scrollView].contentOffset.y;
    CGFloat offsetY = [self show].contentOffset.y;
    //: CGFloat aX = offsetX>=0 ? offsetX+_imageInset.left : (_imageInset.left - ((offsetX) < 0 ? (-(offsetX)) : (offsetX)));
    CGFloat aX = offsetX>=0 ? offsetX+_imageInset.left : (_imageInset.left - ((offsetX) < 0 ? (-(offsetX)) : (offsetX)));
    //: CGFloat aY = offsetY>=0 ? offsetY+_imageInset.top : (_imageInset.top - ((offsetY) < 0 ? (-(offsetY)) : (offsetY)));
    CGFloat aY = offsetY>=0 ? offsetY+_imageInset.top : (_imageInset.top - ((offsetY) < 0 ? (-(offsetY)) : (offsetY)));

    //: aX = aX / zoomScale;
    aX = aX / zoomScale;
    //: aY = aY / zoomScale;
    aY = aY / zoomScale;

    //: CGFloat aWidth = ((_cropSize.width / zoomScale) < (_cropSize.width) ? (_cropSize.width / zoomScale) : (_cropSize.width));
    CGFloat aWidth = ((_cropSize.width / zoomScale) < (_cropSize.width) ? (_cropSize.width / zoomScale) : (_cropSize.width));
    //: CGFloat aHeight = ((_cropSize.height / zoomScale) < (_cropSize.height) ? (_cropSize.height / zoomScale) : (_cropSize.height));
    CGFloat aHeight = ((_cropSize.height / zoomScale) < (_cropSize.height) ? (_cropSize.height / zoomScale) : (_cropSize.height));
    //: if (zoomScale < 1) {
    if (zoomScale < 1) {
        //: aWidth = ((_cropSize.width / zoomScale) > (_cropSize.width) ? (_cropSize.width / zoomScale) : (_cropSize.width));
        aWidth = ((_cropSize.width / zoomScale) > (_cropSize.width) ? (_cropSize.width / zoomScale) : (_cropSize.width));
        //: aHeight = ((_cropSize.height / zoomScale) > (_cropSize.height) ? (_cropSize.height / zoomScale) : (_cropSize.height));
        aHeight = ((_cropSize.height / zoomScale) > (_cropSize.height) ? (_cropSize.height / zoomScale) : (_cropSize.height));
    }


    //: NSLog(@"%f--%f", _image.size.width, _image.size.height);
    //: NSLog(@"%f--%f--%f--%f", aX, aY, aWidth, aHeight);


    //: UIImage *image = [_image cropImageWithX:aX y:aY width:aWidth height:aHeight];
    UIImage *image = [_image information:aX screen:aY searched:aWidth lowInput:aHeight];

    //: CGFloat resizeWidth = _cropSize.width * [UIScreen mainScreen].scale;
    CGFloat resizeWidth = _cropSize.width * [UIScreen mainScreen].scale;
    //: CGFloat resizeheight = _cropSize.height * [UIScreen mainScreen].scale;
    CGFloat resizeheight = _cropSize.height * [UIScreen mainScreen].scale;
    //: image = [image resizeToWidth:resizeWidth height:resizeheight];
    image = [image wordName:resizeWidth dismiss:resizeheight];

    //: return image;
    return image;
}

//: #pragma UIScrollViewDelegate
#pragma UIScrollViewDelegate
//: - (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    //: return [self imageView];
    return [self imageBirdSEyeView];
}


//: @end
@end

//: #pragma KISnipImageMaskView
#pragma KISnipImageMaskView



//: @implementation KICropImageMaskView
@implementation ToIconView

//: - (void)setCropSize:(CGSize)size {
- (void)setInfo:(CGSize)size {
    //: CGFloat x = (CGRectGetWidth(self.bounds) - size.width) / 2;
    CGFloat x = (CGRectGetWidth(self.bounds) - size.width) / 2;
    //: CGFloat y = (CGRectGetHeight(self.bounds) - size.height) / 2;
    CGFloat y = (CGRectGetHeight(self.bounds) - size.height) / 2;
    //: _cropRect = CGRectMake(x, y, size.width, size.height);
    _cropRect = CGRectMake(x, y, size.width, size.height);

    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: - (CGSize)cropSize {
- (CGSize)info {
    //: return _cropRect.size;
    return _cropRect.size;
}

//: - (void)drawRect:(CGRect)rect {
- (void)drawRect:(CGRect)rect {
    //: [super drawRect:rect];
    [super drawRect:rect];
    //: CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //: CGContextSetRGBFillColor(ctx, 0, 0, 0, .6);
    CGContextSetRGBFillColor(ctx, 0, 0, 0, .6);
    //: CGContextFillRect(ctx, self.bounds);
    CGContextFillRect(ctx, self.bounds);

    //: CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    //: CGContextStrokeRectWithWidth(ctx, _cropRect, 2.0f);
    CGContextStrokeRectWithWidth(ctx, _cropRect, 2.0f);

    //: CGContextClearRect(ctx, _cropRect);
    CGContextClearRect(ctx, _cropRect);
}
//: @end
@end