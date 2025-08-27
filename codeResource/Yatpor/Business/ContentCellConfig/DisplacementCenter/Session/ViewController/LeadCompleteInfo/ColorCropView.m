// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorCropView.m
//  ColorCropView
//
//  Created by youyou on 16/12/5.
//  Copyright © 2016年 iceyouyou. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UUMarqueeView.h"
#import "ColorCropView.h"

//: @interface UUMarqueeView () <UUMarqueeViewTouchResponder>
@interface ColorCropView () <MessageOrigin>

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, assign) NSInteger visibleItemCount;
@property (nonatomic, assign) NSInteger visibleItemCount;
//: @property (nonatomic, strong) NSMutableArray<UUMarqueeItemView*> *items;
@property (nonatomic, strong) NSMutableArray<CropBubbleView*> *items;
//: @property (nonatomic, assign) int firstItemIndex;
@property (nonatomic, assign) int firstItemIndex;
//: @property (nonatomic, assign) int dataIndex;
@property (nonatomic, assign) int dataIndex;
//: @property (nonatomic, strong) NSTimer *scrollTimer;
@property (nonatomic, strong) NSTimer *scrollTimer;
//: @property (nonatomic, strong) UUMarqueeViewTouchReceiver *touchReceiver;
@property (nonatomic, strong) OffView *touchReceiver;

//: @property (nonatomic, assign) BOOL isWaiting;
@property (nonatomic, assign) BOOL isWaiting;
//: @property (nonatomic, assign) BOOL isScrolling;
@property (nonatomic, assign) BOOL isScrolling;
//: @property (nonatomic, assign) BOOL isScrollNeedsToStop;
@property (nonatomic, assign) BOOL isScrollNeedsToStop;
//: @property (nonatomic, assign) BOOL isPausingBeforeTouchesBegan;
@property (nonatomic, assign) BOOL isPausingBeforeTouchesBegan;
//: @property (nonatomic, assign) BOOL isPausingBeforeResignActive;
@property (nonatomic, assign) BOOL isPausingBeforeResignActive;

//: @end
@end

//: @implementation UUMarqueeView
@implementation ColorCropView

//: static NSInteger const DEFAULT_VISIBLE_ITEM_COUNT = 2;
static NSInteger const userFromMsg = 2;
//: static NSTimeInterval const DEFAULT_TIME_INTERVAL = 4.0;
static NSTimeInterval const kViewMoveKitFormat = 4.0;
//: static NSTimeInterval const DEFAULT_TIME_DURATION = 1.0;
static NSTimeInterval const noti_policyWeekTitle = 1.0;
//: static float const DEFAULT_SCROLL_SPEED = 40.0f;
static float const user_countCommentTitle = 40.0f;
//: static float const DEFAULT_ITEM_SPACING = 20.0f;
static float const m_scaleChangeMsg = 20.0f;

//: - (instancetype)initWithCoder:(NSCoder *)aDecoder {
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    //: if (self = [super initWithCoder:aDecoder]) {
    if (self = [super initWithCoder:aDecoder]) {
        //: _timeIntervalPerScroll = DEFAULT_TIME_INTERVAL;
        _timeIntervalPerScroll = kViewMoveKitFormat;
        //: _timeDurationPerScroll = DEFAULT_TIME_DURATION;
        _timeDurationPerScroll = noti_policyWeekTitle;
        //: _scrollSpeed = DEFAULT_SCROLL_SPEED;
        _scrollSpeed = user_countCommentTitle;
        //: _itemSpacing = DEFAULT_ITEM_SPACING;
        _itemSpacing = m_scaleChangeMsg;
        //: _touchEnabled = NO;
        _touchEnabled = NO;
        //: _stopWhenLessData = NO;
        _stopWhenLessData = NO;

        //: _contentView = [[UIView alloc] initWithFrame:self.bounds];
        _contentView = [[UIView alloc] initWithFrame:self.bounds];
        //: _contentView.clipsToBounds = YES;
        _contentView.clipsToBounds = YES;
        //: [self addSubview:_contentView];
        [self addSubview:_contentView];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleResignActiveNotification:)
                                                 selector:@selector(onses:)
                                                     //: name:UIApplicationWillResignActiveNotification
                                                     name:UIApplicationWillResignActiveNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleBecomeActiveNotification:)
                                                 selector:@selector(directionned:)
                                                     //: name:UIApplicationDidBecomeActiveNotification
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithDirection:(UUMarqueeViewDirection)direction {
- (instancetype)initWithRangePullDirection:(UUMarqueeViewDirection)direction {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _direction = direction;
        _direction = direction;
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithFrame:(CGRect)frame direction:(UUMarqueeViewDirection)direction {
- (instancetype)initWithEnableDirection:(CGRect)frame withHeadingFrameColor:(UUMarqueeViewDirection)direction {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: _direction = direction;
        _direction = direction;
        //: _timeIntervalPerScroll = DEFAULT_TIME_INTERVAL;
        _timeIntervalPerScroll = kViewMoveKitFormat;
        //: _timeDurationPerScroll = DEFAULT_TIME_DURATION;
        _timeDurationPerScroll = noti_policyWeekTitle;
        //: _scrollSpeed = DEFAULT_SCROLL_SPEED;
        _scrollSpeed = user_countCommentTitle;
        //: _itemSpacing = DEFAULT_ITEM_SPACING;
        _itemSpacing = m_scaleChangeMsg;
        //: _touchEnabled = NO;
        _touchEnabled = NO;
        //: _stopWhenLessData = NO;
        _stopWhenLessData = NO;

        //: _contentView = [[UIView alloc] initWithFrame:self.bounds];
        _contentView = [[UIView alloc] initWithFrame:self.bounds];
        //: _contentView.clipsToBounds = YES;
        _contentView.clipsToBounds = YES;
        //: [self addSubview:_contentView];
        [self addSubview:_contentView];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleResignActiveNotification:)
                                                 selector:@selector(onses:)
                                                     //: name:UIApplicationWillResignActiveNotification
                                                     name:UIApplicationWillResignActiveNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleBecomeActiveNotification:)
                                                 selector:@selector(directionned:)
                                                     //: name:UIApplicationDidBecomeActiveNotification
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: _timeIntervalPerScroll = DEFAULT_TIME_INTERVAL;
        _timeIntervalPerScroll = kViewMoveKitFormat;
        //: _timeDurationPerScroll = DEFAULT_TIME_DURATION;
        _timeDurationPerScroll = noti_policyWeekTitle;
        //: _scrollSpeed = DEFAULT_SCROLL_SPEED;
        _scrollSpeed = user_countCommentTitle;
        //: _itemSpacing = DEFAULT_ITEM_SPACING;
        _itemSpacing = m_scaleChangeMsg;
        //: _touchEnabled = NO;
        _touchEnabled = NO;
        //: _stopWhenLessData = NO;
        _stopWhenLessData = NO;

        //: _contentView = [[UIView alloc] initWithFrame:self.bounds];
        _contentView = [[UIView alloc] initWithFrame:self.bounds];
        //: _contentView.clipsToBounds = YES;
        _contentView.clipsToBounds = YES;
        //: [self addSubview:_contentView];
        [self addSubview:_contentView];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleResignActiveNotification:)
                                                 selector:@selector(onses:)
                                                     //: name:UIApplicationWillResignActiveNotification
                                                     name:UIApplicationWillResignActiveNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleBecomeActiveNotification:)
                                                 selector:@selector(directionned:)
                                                     //: name:UIApplicationDidBecomeActiveNotification
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)setClipsToBounds:(BOOL)clipsToBounds {
- (void)setClipsToBounds:(BOOL)clipsToBounds {
    //: _contentView.clipsToBounds = clipsToBounds;
    _contentView.clipsToBounds = clipsToBounds;
}

//: - (void)setTouchEnabled:(BOOL)touchEnabled {
- (void)setTouchEnabled:(BOOL)touchEnabled {
    //: _touchEnabled = touchEnabled;
    _touchEnabled = touchEnabled;
    //: [self resetTouchReceiver];
    [self tingOf];
}

//: - (void)reloadData {
- (void)titleArray {
    //: if (_isWaiting) {
    if (_isWaiting) {
        //: if (_scrollTimer) {
        if (_scrollTimer) {
            //: [_scrollTimer invalidate];
            [_scrollTimer invalidate];
            //: self.scrollTimer = nil;
            self.scrollTimer = nil;
        }
        //: [self resetAll];
        [self printMedia];
        //: [self startAfterTimeInterval:YES];
        [self state:YES];
    //: } else if (_isScrolling) {
    } else if (_isScrolling) {
        //: [self resetAll];
        [self printMedia];
    //: } else {
    } else {
        // stopped
        //: [self resetAll];
        [self printMedia];
        //: [self startAfterTimeInterval:YES];
        [self state:YES];
    }
}

//: - (void)start {
- (void)send {
    //: self.isScrollNeedsToStop = NO;
    self.isScrollNeedsToStop = NO;
    //: if (!_isScrolling && !_isWaiting) {
    if (!_isScrolling && !_isWaiting) {
        //: [self startAfterTimeInterval:NO];
        [self state:NO];
    }
}

//: - (void)pause {
- (void)to {
    //: self.isScrollNeedsToStop = YES;
    self.isScrollNeedsToStop = YES;
}

//: - (void)repeat {
- (void)independent {
    //: if (!_isScrollNeedsToStop) {
    if (!_isScrollNeedsToStop) {
        //: [self startAfterTimeInterval:YES];
        [self state:YES];
    }
}

//: - (void)repeatWithAnimationFinished:(BOOL)finished {
- (void)session:(BOOL)finished {
    //: if (!_isScrollNeedsToStop) {
    if (!_isScrollNeedsToStop) {
        //: [self startAfterTimeInterval:YES animationFinished:finished];
        [self eigenvalueOfAMatrixFinished:YES refresh:finished];
    }
}

//: - (void)startAfterTimeInterval:(BOOL)afterTimeInterval {
- (void)state:(BOOL)afterTimeInterval {
    //: [self startAfterTimeInterval:afterTimeInterval animationFinished:YES];
    [self eigenvalueOfAMatrixFinished:afterTimeInterval refresh:YES];
}

//: - (void)startAfterTimeInterval:(BOOL)afterTimeInterval animationFinished:(BOOL)finished {
- (void)eigenvalueOfAMatrixFinished:(BOOL)afterTimeInterval refresh:(BOOL)finished {
    //: if (_isScrolling || _items.count <= 0) {
    if (_isScrolling || _items.count <= 0) {
        //: return;
        return;
    }

    //: self.isWaiting = YES;
    self.isWaiting = YES;
    //: NSTimeInterval timeInterval = 1.0;
    NSTimeInterval timeInterval = 1.0;
    //: if (finished) {
    if (finished) {
        //: timeInterval = afterTimeInterval ? _timeIntervalPerScroll : 0.0;
        timeInterval = afterTimeInterval ? _timeIntervalPerScroll : 0.0;
    }
    //: self.scrollTimer = [NSTimer scheduledTimerWithTimeInterval:timeInterval
    self.scrollTimer = [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                                        //: target:self
                                                        target:self
                                                      //: selector:@selector(scrollTimerDidFire:)
                                                      selector:@selector(moding:)
                                                      //: userInfo:nil
                                                      userInfo:nil
                                                       //: repeats:NO];
                                                       repeats:NO];
}

//: #pragma mark - Override(private)
#pragma mark - Override(private)
//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: [_contentView setFrame:self.bounds];
    [_contentView setFrame:self.bounds];
    //: [self repositionItemViews];
    [self read];
    //: if (_touchEnabled && _touchReceiver) {
    if (_touchEnabled && _touchReceiver) {
        //: [_touchReceiver setFrame:self.bounds];
        [_touchReceiver setFrame:self.bounds];
    }
}

//: - (void)dealloc {
- (void)dealloc {
    //: if (_scrollTimer) {
    if (_scrollTimer) {
        //: [_scrollTimer invalidate];
        [_scrollTimer invalidate];
        //: self.scrollTimer = nil;
        self.scrollTimer = nil;
    }
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)handleResignActiveNotification:(NSNotification*)notification {
- (void)onses:(NSNotification*)notification {
    //: self.isPausingBeforeResignActive = _isScrollNeedsToStop;
    self.isPausingBeforeResignActive = _isScrollNeedsToStop;
    //: [self pause];
    [self to];
}

//: - (void)handleBecomeActiveNotification:(NSNotification*)notification {
- (void)directionned:(NSNotification*)notification {
    //: if (!_isPausingBeforeResignActive) {
    if (!_isPausingBeforeResignActive) {
        //: [self start];
        [self send];
    }
}

//: #pragma mark - ItemView(private)
#pragma mark - ItemView(private)
//: - (void)resetAll {
- (void)printMedia {
    //: self.dataIndex = -1;
    self.dataIndex = -1;
    //: self.firstItemIndex = 0;
    self.firstItemIndex = 0;

    //: if (_items) {
    if (_items) {
        //: [_items makeObjectsPerformSelector:@selector(removeFromSuperview)];
        [_items makeObjectsPerformSelector:@selector(removeFromSuperview)];
        //: [_items removeAllObjects];
        [_items removeAllObjects];
    //: } else {
    } else {
        //: self.items = [NSMutableArray array];
        self.items = [NSMutableArray array];
    }

    //: if (_direction == UUMarqueeViewDirectionLeftward) {
    if (_direction == UUMarqueeViewDirectionLeftward) {
        //: self.visibleItemCount = 1;
        self.visibleItemCount = 1;
    //: } else {
    } else {
        //: if ([_delegate respondsToSelector:@selector(numberOfVisibleItemsForMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(numerosityEnable:)]) {
            //: self.visibleItemCount = [_delegate numberOfVisibleItemsForMarqueeView:self];
            self.visibleItemCount = [_delegate numerosityEnable:self];
            //: if (_visibleItemCount <= 0) {
            if (_visibleItemCount <= 0) {
                //: return;
                return;
            }
        //: } else {
        } else {
            //: self.visibleItemCount = DEFAULT_VISIBLE_ITEM_COUNT;
            self.visibleItemCount = userFromMsg;
        }
    }

    //: for (int i = 0; i < _visibleItemCount + 2; i++) {
    for (int i = 0; i < _visibleItemCount + 2; i++) {
        //: UUMarqueeItemView *itemView = [[UUMarqueeItemView alloc] init];
        CropBubbleView *itemView = [[CropBubbleView alloc] init];
        //: [_contentView addSubview:itemView];
        [_contentView addSubview:itemView];
        //: [_items addObject:itemView];
        [_items addObject:itemView];
    }

    //: if (_direction == UUMarqueeViewDirectionLeftward) {
    if (_direction == UUMarqueeViewDirectionLeftward) {
        //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
        CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
        //: CGFloat lastMaxX = 0.0f;
        CGFloat lastMaxX = 0.0f;
        //: for (int i = 0; i < _items.count; i++) {
        for (int i = 0; i < _items.count; i++) {
            //: int index = (i + _firstItemIndex) % _items.count;
            int index = (i + _firstItemIndex) % _items.count;

            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: if (i == 0) {
            if (i == 0) {
                //: [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                //: lastMaxX = 0.0f;
                lastMaxX = 0.0f;

                //: [self createItemView:_items[index]];
                [self incentiveOption:_items[index]];
            //: } else {
            } else {
                //: [self moveToNextDataIndex];
                [self item];
                //: _items[index].tag = _dataIndex;
                _items[index].tag = _dataIndex;
                //: _items[index].width = [self itemWidthAtIndex:_items[index].tag];
                _items[index].width = [self successPin:_items[index].tag];
                //: itemWidth = ((_items[index].width + _itemSpacing) > (itemWidth) ? (_items[index].width + _itemSpacing) : (itemWidth));
                itemWidth = ((_items[index].width + _itemSpacing) > (itemWidth) ? (_items[index].width + _itemSpacing) : (itemWidth));

                //: [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                //: lastMaxX = lastMaxX + itemWidth;
                lastMaxX = lastMaxX + itemWidth;

                //: [self updateItemView:_items[index] atIndex:_items[index].tag];
                [self name:_items[index] bar:_items[index].tag];
            }
        }
    //: } else {
    } else {
        //: if (_useDynamicHeight) {
        if (_useDynamicHeight) {
            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i == _items.count - 1) {
                if (i == _items.count - 1) {
                    //: [self moveToNextDataIndex];
                    [self item];
                    //: _items[index].tag = _dataIndex;
                    _items[index].tag = _dataIndex;
                    //: _items[index].height = [self itemHeightAtIndex:_items[index].tag];
                    _items[index].height = [self withIndex:_items[index].tag];
                    //: _items[index].alpha = 0.0f;
                    _items[index].alpha = 0.0f;

                    //: [_items[index] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[index].height)];
                    [_items[index] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[index].height)];
                    //: [self updateItemView:_items[index] atIndex:_items[index].tag];
                    [self name:_items[index] bar:_items[index].tag];
                //: } else {
                } else {
                    //: _items[index].tag = _dataIndex;
                    _items[index].tag = _dataIndex;
                    //: _items[index].alpha = 0.0f;
                    _items[index].alpha = 0.0f;

                    //: [_items[index] setFrame:CGRectMake(0.0f, 0.0f, itemWidth, 0.0f)];
                    [_items[index] setFrame:CGRectMake(0.0f, 0.0f, itemWidth, 0.0f)];
                }
            }
        //: } else {
        } else {
            //: NSUInteger dataCount = 0;
            NSUInteger dataCount = 0;
            //: if ([_delegate respondsToSelector:@selector(numberOfDataForMarqueeView:)]) {
            if ([_delegate respondsToSelector:@selector(withView:)]) {
                //: dataCount = [_delegate numberOfDataForMarqueeView:self];
                dataCount = [_delegate withView:self];
            }

            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i == 0) {
                if (i == 0) {
                    //: _items[index].tag = _dataIndex;
                    _items[index].tag = _dataIndex;

                    //: [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                    [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                    //: [self createItemView:_items[index]];
                    [self incentiveOption:_items[index]];
                //: } else {
                } else {
                    //: [self moveToNextDataIndex];
                    [self item];
                    //: _items[index].tag = _dataIndex;
                    _items[index].tag = _dataIndex;

                    //: [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 1), itemWidth, itemHeight)];
                    [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 1), itemWidth, itemHeight)];

                    //: if (_stopWhenLessData) {
                    if (_stopWhenLessData) {
                        //: if (i <= dataCount) {
                        if (i <= dataCount) {
                            //: [self updateItemView:_items[index] atIndex:_items[index].tag];
                            [self name:_items[index] bar:_items[index].tag];
                        //: } else {
                        } else {
                            //: [self createItemView:_items[index]];
                            [self incentiveOption:_items[index]];
                        }
                    //: } else {
                    } else {
                        //: [self updateItemView:_items[index] atIndex:_items[index].tag];
                        [self name:_items[index] bar:_items[index].tag];
                    }
                }
            }
        }
    }

    //: [self resetTouchReceiver];
    [self tingOf];
}

//: - (void)repositionItemViews {
- (void)read {
    //: if (_direction == UUMarqueeViewDirectionLeftward) {
    if (_direction == UUMarqueeViewDirectionLeftward) {
        //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
        CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
        //: CGFloat lastMaxX = 0.0f;
        CGFloat lastMaxX = 0.0f;
        //: for (int i = 0; i < _items.count; i++) {
        for (int i = 0; i < _items.count; i++) {
            //: int index = (i + _firstItemIndex) % _items.count;
            int index = (i + _firstItemIndex) % _items.count;

            //: CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
            CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));

            //: if (i == 0) {
            if (i == 0) {
                //: [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                //: lastMaxX = 0.0f;
                lastMaxX = 0.0f;
            //: } else {
            } else {
                //: [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                //: lastMaxX = lastMaxX + itemWidth;
                lastMaxX = lastMaxX + itemWidth;
            }
        }
    //: } else {
    } else {
        //: if (_useDynamicHeight) {
        if (_useDynamicHeight) {
            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: CGFloat lastMaxY = 0.0f;
            CGFloat lastMaxY = 0.0f;
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i == 0) {
                if (i == 0) {
                    //: [_items[index] setFrame:CGRectMake(0.0f, 0.0f, itemWidth, 0.0f)];
                    [_items[index] setFrame:CGRectMake(0.0f, 0.0f, itemWidth, 0.0f)];
                    //: lastMaxY = 0.0f;
                    lastMaxY = 0.0f;
                //: } else if (i == _items.count - 1) {
                } else if (i == _items.count - 1) {
                    //: [_items[index] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[index].height)];
                    [_items[index] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[index].height)];
                //: } else {
                } else {
                    //: [_items[index] setFrame:CGRectMake(0.0f, lastMaxY, itemWidth, _items[index].height)];
                    [_items[index] setFrame:CGRectMake(0.0f, lastMaxY, itemWidth, _items[index].height)];
                    //: lastMaxY = lastMaxY + _items[index].height;
                    lastMaxY = lastMaxY + _items[index].height;
                }
            }

            //: CGFloat offsetY = CGRectGetHeight(self.frame) - lastMaxY;
            CGFloat offsetY = CGRectGetHeight(self.frame) - lastMaxY;
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i > 0 && i < _items.count - 1) {
                if (i > 0 && i < _items.count - 1) {
                    //: [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                    [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                                                       //: CGRectGetMinY(_items[index].frame) + offsetY,
                                                       CGRectGetMinY(_items[index].frame) + offsetY,
                                                       //: itemWidth,
                                                       itemWidth,
                                                       //: _items[index].height)];
                                                       _items[index].height)];
                }
            }
        //: } else {
        } else {
            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i == 0) {
                if (i == 0) {
                    //: [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                    [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                //: } else {
                } else {
                    //: [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 1), itemWidth, itemHeight)];
                    [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 1), itemWidth, itemHeight)];
                }
            }
        }
    }
}

//: - (int)itemIndexWithOffsetFromTop:(int)offsetFromTop {
- (int)bluntTop:(int)offsetFromTop {
    //: return (_firstItemIndex + offsetFromTop) % (_visibleItemCount + 2);
    return (_firstItemIndex + offsetFromTop) % (_visibleItemCount + 2);
}

//: - (void)moveToNextItemIndex {
- (void)showName {
    //: if (_firstItemIndex >= _items.count - 1) {
    if (_firstItemIndex >= _items.count - 1) {
        //: self.firstItemIndex = 0;
        self.firstItemIndex = 0;
    //: } else {
    } else {
        //: self.firstItemIndex++;
        self.firstItemIndex++;
    }
}

//: - (CGFloat)itemWidthAtIndex:(NSInteger)index {
- (CGFloat)successPin:(NSInteger)index {
    //: CGFloat itemWidth = 0.0f;
    CGFloat itemWidth = 0.0f;
    //: if (index >= 0) {
    if (index >= 0) {
        //: if ([_delegate respondsToSelector:@selector(itemViewWidthAtIndex:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(messageData:doing:)]) {
            //: itemWidth = [_delegate itemViewWidthAtIndex:index forMarqueeView:self];
            itemWidth = [_delegate messageData:index doing:self];
        }
    }
    //: return itemWidth;
    return itemWidth;
}

//: - (CGFloat)itemHeightAtIndex:(NSInteger)index {
- (CGFloat)withIndex:(NSInteger)index {
    //: CGFloat itemHeight = 0.0f;
    CGFloat itemHeight = 0.0f;
    //: if (index >= 0) {
    if (index >= 0) {
        //: if ([_delegate respondsToSelector:@selector(itemViewHeightAtIndex:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(past:ting:)]) {
            //: itemHeight = [_delegate itemViewHeightAtIndex:index forMarqueeView:self];
            itemHeight = [_delegate past:index ting:self];
        }
    }
    //: return itemHeight;
    return itemHeight;
}

//: - (void)createItemView:(UUMarqueeItemView*)itemView {
- (void)incentiveOption:(CropBubbleView*)itemView {
    //: if (!itemView.didFinishCreate) {
    if (!itemView.didFinishCreate) {
        //: if ([_delegate respondsToSelector:@selector(createItemView:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(should:bottom:)]) {
            //: [_delegate createItemView:itemView forMarqueeView:self];
            [_delegate should:itemView bottom:self];
            //: itemView.didFinishCreate = YES;
            itemView.didFinishCreate = YES;
        }
    }
}

//: - (void)updateItemView:(UUMarqueeItemView*)itemView atIndex:(NSInteger)index {
- (void)name:(CropBubbleView*)itemView bar:(NSInteger)index {
    //: if (index < 0) {
    if (index < 0) {
        //: [itemView clear];
        [itemView sizeFormat];
    }

    //: if (!itemView.didFinishCreate) {
    if (!itemView.didFinishCreate) {
        //: if ([_delegate respondsToSelector:@selector(createItemView:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(should:bottom:)]) {
            //: [_delegate createItemView:itemView forMarqueeView:self];
            [_delegate should:itemView bottom:self];
            //: itemView.didFinishCreate = YES;
            itemView.didFinishCreate = YES;
        }
    }

    //: if (index >= 0) {
    if (index >= 0) {
        //: if ([_delegate respondsToSelector:@selector(updateItemView:atIndex:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(marquee:bitSub:max:)]) {
            //: [_delegate updateItemView:itemView atIndex:index forMarqueeView:self];
            [_delegate marquee:itemView bitSub:index max:self];
        }
    }
}

//: #pragma mark - Timer & Animation(private)
#pragma mark - Timer & Animation(private)
//: - (void)scrollTimerDidFire:(NSTimer *)timer {
- (void)moding:(NSTimer *)timer {
    //: self.isWaiting = NO;
    self.isWaiting = NO;
    //: if (_isScrollNeedsToStop) {
    if (_isScrollNeedsToStop) {
        //: return;
        return;
    }

    //: self.isScrolling = YES;
    self.isScrolling = YES;
    //: if (_stopWhenLessData) {
    if (_stopWhenLessData) {
        //: NSUInteger dataCount = 0;
        NSUInteger dataCount = 0;
        //: if ([_delegate respondsToSelector:@selector(numberOfDataForMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(withView:)]) {
            //: dataCount = [_delegate numberOfDataForMarqueeView:self];
            dataCount = [_delegate withView:self];
        }
        //: if (_direction == UUMarqueeViewDirectionLeftward) {
        if (_direction == UUMarqueeViewDirectionLeftward) {
            //: if (dataCount <= 1) {
            if (dataCount <= 1) {
                //: CGFloat itemWidth = ((_items[1].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[1].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
                CGFloat itemWidth = ((_items[1].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[1].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
                //: if (itemWidth <= CGRectGetWidth(self.frame)) {
                if (itemWidth <= CGRectGetWidth(self.frame)) {
                    //: __weak __typeof(self) weakSelf = self;
                    __weak __typeof(self) weakSelf = self;
                    //: dispatch_after(dispatch_time((0ull), (int64_t)(_timeDurationPerScroll * 1000000000ull)), dispatch_get_main_queue(), ^{
                    dispatch_after(dispatch_time((0ull), (int64_t)(_timeDurationPerScroll * 1000000000ull)), dispatch_get_main_queue(), ^{
                        //: __strong __typeof(self) self = weakSelf;
                        __strong __typeof(self) self = weakSelf;
                        //: if (self) {
                        if (self) {
                            //: self.isScrolling = NO;
                            self.isScrolling = NO;
                            //: [self repeat];
                            [self independent];
                        }
                    //: });
                    });
                    //: return;
                    return;
                }
            }
        //: } else {
        } else {
            //: if (dataCount <= _visibleItemCount) {
            if (dataCount <= _visibleItemCount) {
                //: __weak __typeof(self) weakSelf = self;
                __weak __typeof(self) weakSelf = self;
                //: dispatch_after(dispatch_time((0ull), (int64_t)(_timeDurationPerScroll * 1000000000ull)), dispatch_get_main_queue(), ^{
                dispatch_after(dispatch_time((0ull), (int64_t)(_timeDurationPerScroll * 1000000000ull)), dispatch_get_main_queue(), ^{
                    //: __strong __typeof(self) self = weakSelf;
                    __strong __typeof(self) self = weakSelf;
                    //: if (self) {
                    if (self) {
                        //: self.isScrolling = NO;
                        self.isScrolling = NO;
                        //: [self repeat];
                        [self independent];
                    }
                //: });
                });
                //: return;
                return;
            }
        }
    }
    //: dispatch_async(dispatch_get_main_queue(), ^() {
    dispatch_async(dispatch_get_main_queue(), ^() {
        //: if (_direction == UUMarqueeViewDirectionLeftward) {
        if (_direction == UUMarqueeViewDirectionLeftward) {
            //: [self moveToNextDataIndex];
            [self item];

            //: CGFloat itemHeight = CGRectGetHeight(self.frame);
            CGFloat itemHeight = CGRectGetHeight(self.frame);
            //: CGFloat firstItemWidth = CGRectGetWidth(self.frame);
            CGFloat firstItemWidth = CGRectGetWidth(self.frame);
            //: CGFloat currentItemWidth = CGRectGetWidth(self.frame);
            CGFloat currentItemWidth = CGRectGetWidth(self.frame);
            //: CGFloat lastItemWidth = CGRectGetWidth(self.frame);
            CGFloat lastItemWidth = CGRectGetWidth(self.frame);
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;

                //: CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
                CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));

                //: if (i == 0) {
                if (i == 0) {
                    //: firstItemWidth = itemWidth;
                    firstItemWidth = itemWidth;
                //: } else if (i == 1) {
                } else if (i == 1) {
                    //: currentItemWidth = itemWidth;
                    currentItemWidth = itemWidth;
                //: } else {
                } else {
                    //: lastItemWidth = itemWidth;
                    lastItemWidth = itemWidth;
                }
            }

            // move the left item to right without animation
            //: _items[_firstItemIndex].tag = _dataIndex;
            _items[_firstItemIndex].tag = _dataIndex;
            //: _items[_firstItemIndex].width = [self itemWidthAtIndex:_items[_firstItemIndex].tag];
            _items[_firstItemIndex].width = [self successPin:_items[_firstItemIndex].tag];
            //: CGFloat nextItemWidth = ((_items[_firstItemIndex].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[_firstItemIndex].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
            CGFloat nextItemWidth = ((_items[_firstItemIndex].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[_firstItemIndex].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
            //: [_items[_firstItemIndex] setFrame:CGRectMake(lastItemWidth, 0.0f, nextItemWidth, itemHeight)];
            [_items[_firstItemIndex] setFrame:CGRectMake(lastItemWidth, 0.0f, nextItemWidth, itemHeight)];
            //: if (firstItemWidth != nextItemWidth) {
            if (firstItemWidth != nextItemWidth) {
                // if the width of next item view changes, then recreate it by delegate
                //: [_items[_firstItemIndex] clear];
                [_items[_firstItemIndex] sizeFormat];
            }
            //: [self updateItemView:_items[_firstItemIndex] atIndex:_items[_firstItemIndex].tag];
            [self name:_items[_firstItemIndex] bar:_items[_firstItemIndex].tag];

            //: __weak __typeof(self) weakSelf = self;
            __weak __typeof(self) weakSelf = self;
            //: [UIView animateWithDuration:(currentItemWidth / _scrollSpeed) delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
            [UIView animateWithDuration:(currentItemWidth / _scrollSpeed) delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
                //: CGFloat lastMaxX = 0.0f;
                CGFloat lastMaxX = 0.0f;
                //: for (int i = 0; i < _items.count; i++) {
                for (int i = 0; i < _items.count; i++) {
                    //: int index = (i + _firstItemIndex) % _items.count;
                    int index = (i + _firstItemIndex) % _items.count;

                    //: CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
                    CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));

                    //: if (i == 0) {
                    if (i == 0) {
                        //: continue;
                        continue;
                    //: } else if (i == 1) {
                    } else if (i == 1) {
                        //: [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                        [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                        //: lastMaxX = 0.0f;
                        lastMaxX = 0.0f;
                    //: } else {
                    } else {
                        //: [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                        [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                        //: lastMaxX = lastMaxX + itemWidth;
                        lastMaxX = lastMaxX + itemWidth;
                    }
                }
            //: } completion:^(BOOL finished) {
            } completion:^(BOOL finished) {
                //: __strong __typeof(self) self = weakSelf;
                __strong __typeof(self) self = weakSelf;
                //: if (self) {
                if (self) {
                    //: self.isScrolling = NO;
                    self.isScrolling = NO;
                    //: [self repeatWithAnimationFinished:finished];
                    [self session:finished];
                }
            //: }];
            }];
            //: [self moveToNextItemIndex];
            [self showName];
        //: } else {
        } else {
            //: [self moveToNextDataIndex];
            [self item];

            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;

            // move the top item to bottom without animation
            //: _items[_firstItemIndex].tag = _dataIndex;
            _items[_firstItemIndex].tag = _dataIndex;
            //: if (_useDynamicHeight) {
            if (_useDynamicHeight) {
                //: CGFloat firstItemWidth = _items[_firstItemIndex].height;
                CGFloat firstItemWidth = _items[_firstItemIndex].height;
                //: _items[_firstItemIndex].height = [self itemHeightAtIndex:_items[_firstItemIndex].tag];
                _items[_firstItemIndex].height = [self withIndex:_items[_firstItemIndex].tag];
                //: [_items[_firstItemIndex] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[_firstItemIndex].height)];
                [_items[_firstItemIndex] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[_firstItemIndex].height)];
                //: if (firstItemWidth != _items[_firstItemIndex].height) {
                if (firstItemWidth != _items[_firstItemIndex].height) {
                    // if the height of next item view changes, then recreate it by delegate
                    //: [_items[_firstItemIndex] clear];
                    [_items[_firstItemIndex] sizeFormat];
                }
            //: } else {
            } else {
                //: [_items[_firstItemIndex] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, itemHeight)];
                [_items[_firstItemIndex] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, itemHeight)];
            }
            //: [self updateItemView:_items[_firstItemIndex] atIndex:_items[_firstItemIndex].tag];
            [self name:_items[_firstItemIndex] bar:_items[_firstItemIndex].tag];

            //: if (_useDynamicHeight) {
            if (_useDynamicHeight) {
                //: int lastItemIndex = (int)(_items.count - 1 + _firstItemIndex) % _items.count;
                int lastItemIndex = (int)(_items.count - 1 + _firstItemIndex) % _items.count;
                //: CGFloat lastItemHeight = _items[lastItemIndex].height;
                CGFloat lastItemHeight = _items[lastItemIndex].height;
                //: __weak __typeof(self) weakSelf = self;
                __weak __typeof(self) weakSelf = self;
                //: [UIView animateWithDuration:(lastItemHeight / _scrollSpeed) delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
                [UIView animateWithDuration:(lastItemHeight / _scrollSpeed) delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
                    //: for (int i = 0; i < _items.count; i++) {
                    for (int i = 0; i < _items.count; i++) {
                        //: int index = (i + _firstItemIndex) % _items.count;
                        int index = (i + _firstItemIndex) % _items.count;
                        //: if (i == 0) {
                        if (i == 0) {
                            //: continue;
                            continue;
                        //: } else if (i == 1) {
                        } else if (i == 1) {
                            //: [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                            [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                                                               //: CGRectGetMinY(_items[index].frame) - lastItemHeight,
                                                               CGRectGetMinY(_items[index].frame) - lastItemHeight,
                                                               //: itemWidth,
                                                               itemWidth,
                                                               //: _items[index].height)];
                                                               _items[index].height)];
                            //: _items[index].alpha = 0.0f;
                            _items[index].alpha = 0.0f;
                        //: } else {
                        } else {
                            //: [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                            [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                                                               //: CGRectGetMinY(_items[index].frame) - lastItemHeight,
                                                               CGRectGetMinY(_items[index].frame) - lastItemHeight,
                                                               //: itemWidth,
                                                               itemWidth,
                                                               //: _items[index].height)];
                                                               _items[index].height)];
                            //: _items[index].alpha = 1.0f;
                            _items[index].alpha = 1.0f;
                        }
                    }
                //: } completion:^(BOOL finished) {
                } completion:^(BOOL finished) {
                    //: __strong __typeof(self) self = weakSelf;
                    __strong __typeof(self) self = weakSelf;
                    //: if (self) {
                    if (self) {
                        //: self.isScrolling = NO;
                        self.isScrolling = NO;
                        //: [self repeatWithAnimationFinished:finished];
                        [self session:finished];
                    }
                //: }];
                }];
            //: } else {
            } else {
                //: UIViewAnimationOptions animationOptions = UIViewAnimationOptionCurveEaseInOut;
                UIViewAnimationOptions animationOptions = UIViewAnimationOptionCurveEaseInOut;
                //: if (_timeIntervalPerScroll <= 0.0) {
                if (_timeIntervalPerScroll <= 0.0) {
                    // smooth animation
                    //: animationOptions = UIViewAnimationOptionCurveLinear;
                    animationOptions = UIViewAnimationOptionCurveLinear;
                }
                //: __weak __typeof(self) weakSelf = self;
                __weak __typeof(self) weakSelf = self;
                //: [UIView animateWithDuration:_timeDurationPerScroll delay:0.0 options:animationOptions animations:^{
                [UIView animateWithDuration:_timeDurationPerScroll delay:0.0 options:animationOptions animations:^{
                    //: for (int i = 0; i < _items.count; i++) {
                    for (int i = 0; i < _items.count; i++) {
                        //: int index = (i + _firstItemIndex) % _items.count;
                        int index = (i + _firstItemIndex) % _items.count;
                        //: if (i == 0) {
                        if (i == 0) {
                            //: continue;
                            continue;
                        //: } else if (i == 1) {
                        } else if (i == 1) {
                            //: [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                            [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                        //: } else {
                        } else {
                            //: [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 2), itemWidth, itemHeight)];
                            [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 2), itemWidth, itemHeight)];
                        }
                    }
                //: } completion:^(BOOL finished) {
                } completion:^(BOOL finished) {
                    //: __strong __typeof(self) self = weakSelf;
                    __strong __typeof(self) self = weakSelf;
                    //: if (self) {
                    if (self) {
                        //: self.isScrolling = NO;
                        self.isScrolling = NO;
                        //: [self repeatWithAnimationFinished:finished];
                        [self session:finished];
                    }
                //: }];
                }];
            }

            //: [self moveToNextItemIndex];
            [self showName];
        }
    //: });
    });
}

//: #pragma mark - Data source(private)
#pragma mark - Data source(private)
//: - (void)moveToNextDataIndex {
- (void)item {
    //: NSUInteger dataCount = 0;
    NSUInteger dataCount = 0;
    //: if ([_delegate respondsToSelector:@selector(numberOfDataForMarqueeView:)]) {
    if ([_delegate respondsToSelector:@selector(withView:)]) {
        //: dataCount = [_delegate numberOfDataForMarqueeView:self];
        dataCount = [_delegate withView:self];
    }

    //: if (dataCount <= 0) {
    if (dataCount <= 0) {
        //: self.dataIndex = -1;
        self.dataIndex = -1;
    //: } else {
    } else {
        //: self.dataIndex = _dataIndex + 1;
        self.dataIndex = _dataIndex + 1;
        //: if (_dataIndex < 0 || _dataIndex > dataCount - 1) {
        if (_dataIndex < 0 || _dataIndex > dataCount - 1) {
            //: self.dataIndex = 0;
            self.dataIndex = 0;
        }
    }
}

//: #pragma mark - Touch handler(private)
#pragma mark - Touch handler(private)
//: - (void)resetTouchReceiver {
- (void)tingOf {
    //: if (_touchEnabled) {
    if (_touchEnabled) {
        //: if (!_touchReceiver) {
        if (!_touchReceiver) {
            //: self.touchReceiver = [[UUMarqueeViewTouchReceiver alloc] init];
            self.touchReceiver = [[OffView alloc] init];
            //: _touchReceiver.touchDelegate = self;
            _touchReceiver.touchDelegate = self;
            //: [self addSubview:_touchReceiver];
            [self addSubview:_touchReceiver];
        //: } else {
        } else {
            //: [self bringSubviewToFront:_touchReceiver];
            [self bringSubviewToFront:_touchReceiver];
        }
    //: } else {
    } else {
        //: if (_touchReceiver) {
        if (_touchReceiver) {
            //: [_touchReceiver removeFromSuperview];
            [_touchReceiver removeFromSuperview];
            //: self.touchReceiver = nil;
            self.touchReceiver = nil;
        }
    }
}

//: #pragma mark - UUMarqueeViewTouchResponder(private)
#pragma mark - MessageOrigin(private)
//: - (void)touchesBegan {
- (void)commentBegan {
    //: self.isPausingBeforeTouchesBegan = _isScrollNeedsToStop;
    self.isPausingBeforeTouchesBegan = _isScrollNeedsToStop;
    //: [self pause];
    [self to];
}

//: - (void)touchesEndedAtPoint:(CGPoint)point {
- (void)labelSession:(CGPoint)point {
    //: for (UUMarqueeItemView *itemView in _items) {
    for (CropBubbleView *itemView in _items) {
        //: if ([itemView.layer.presentationLayer hitTest:point]) {
        if ([itemView.layer.presentationLayer hitTest:point]) {
            //: NSUInteger dataCount = 0;
            NSUInteger dataCount = 0;
            //: if ([_delegate respondsToSelector:@selector(numberOfDataForMarqueeView:)]) {
            if ([_delegate respondsToSelector:@selector(withView:)]) {
                //: dataCount = [_delegate numberOfDataForMarqueeView:self];
                dataCount = [_delegate withView:self];
            }

            //: if (dataCount > 0 && itemView.tag >= 0 && itemView.tag < dataCount) {
            if (dataCount > 0 && itemView.tag >= 0 && itemView.tag < dataCount) {
                //: if ([self.delegate respondsToSelector:@selector(didTouchItemViewAtIndex:forMarqueeView:)]) {
                if ([self.delegate respondsToSelector:@selector(table:text:)]) {
                    //: [self.delegate didTouchItemViewAtIndex:itemView.tag forMarqueeView:self];
                    [self.delegate table:itemView.tag text:self];
                }
            }
            //: break;
            break;
        }
    }
    //: if (!_isPausingBeforeTouchesBegan) {
    if (!_isPausingBeforeTouchesBegan) {
        //: [self start];
        [self send];
    }
}

//: - (void)touchesCancelled {
- (void)progress {
    //: if (!_isPausingBeforeTouchesBegan) {
    if (!_isPausingBeforeTouchesBegan) {
        //: [self start];
        [self send];
    }
}

//: @end
@end

//: #pragma mark - UUMarqueeViewTouchReceiver(private)
#pragma mark - OffView(private)
//: @implementation UUMarqueeViewTouchReceiver
@implementation OffView

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //: if (_touchDelegate) {
    if (_touchDelegate) {
        //: [_touchDelegate touchesBegan];
        [_touchDelegate commentBegan];
    }
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: UITouch *touch = [touches anyObject];
    UITouch *touch = [touches anyObject];
    //: CGPoint touchLocation = [touch locationInView:self];
    CGPoint touchLocation = [touch locationInView:self];
    //: if (_touchDelegate) {
    if (_touchDelegate) {
        //: [_touchDelegate touchesEndedAtPoint:touchLocation];
        [_touchDelegate labelSession:touchLocation];
    }
}

//: - (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: if (_touchDelegate) {
    if (_touchDelegate) {
        //: [_touchDelegate touchesCancelled];
        [_touchDelegate progress];
    }
}

//: @end
@end

//: #pragma mark - UUMarqueeItemView(Private)
#pragma mark - CropBubbleView(Private)
//: @implementation UUMarqueeItemView
@implementation CropBubbleView

//: - (void)clear {
- (void)sizeFormat {
    //: [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    //: _didFinishCreate = NO;
    _didFinishCreate = NO;
}

//: @end
@end