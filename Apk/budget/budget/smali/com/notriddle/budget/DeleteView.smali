.class public Lcom/notriddle/budget/DeleteView;
.super Landroid/widget/FrameLayout;
.source "DeleteView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/notriddle/budget/DeleteView$OnDeleteListener;
    }
.end annotation


# instance fields
.field mAnim:Landroid/animation/ObjectAnimator;

.field mBackground:I

.field mChecked:Z

.field mFlingCap:I

.field mFlingSlop:I

.field mInnerView:Landroid/view/View;

.field mListener:Lcom/notriddle/budget/DeleteView$OnDeleteListener;

.field mLongPressRunnable:Ljava/lang/Runnable;

.field mLongPressTimeout:I

.field mPressRunnable:Ljava/lang/Runnable;

.field mPressTimeout:I

.field mSwipeStart:F

.field mSwipeStartTime:J

.field mSwipeState:I

.field mTouchSlop:I

.field mUnpressRunnable:Ljava/lang/Runnable;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView;---><init>(Landroid/content/Context;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {v0, v1}, Lcom/notriddle/budget/DeleteView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    # InsDal Modified --> local register: (0)#
    .registers 6

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/DeleteView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-direct {v0, v1}, Lcom/notriddle/budget/DeleteView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    # InsDal Modified --> local register: (0)#
    .registers 7

    move-object/16 v0, p0
    move-object/16 v1, p1
    move-object/16 v2, p2
    move/16 v3, p3

    .param p1, "cntx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-direct {v0, v1}, Lcom/notriddle/budget/DeleteView;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/notriddle/budget/DeleteView;)V
    .locals 0
    .param p0, "x0"    # Lcom/notriddle/budget/DeleteView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/notriddle/budget/DeleteView;->cancelSwipe()V

    return-void
.end method

.method private cancelAnimation(F)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "newStartPosition"    # F

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteView;--->cancelAnimation(F)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, v2, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 345
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 346
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 347
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 349
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, v2, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 350
    iget-object v1, v2, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float v1, v3, v1

    iput v1, v2, Lcom/notriddle/budget/DeleteView;->mSwipeStart:F

    .line 351
    const/4 v1, 0x2

    iput v1, v2, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    .line 352
    return-void
.end method

.method private cancelPressed()V
    # InsDal Modified --> local register: (3)#
    .registers 7

    move-object/16 v3, p0


    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteView;--->cancelPressed()V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, v3, Lcom/notriddle/budget/DeleteView;->mUnpressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v3, v0, v1, v2}, Lcom/notriddle/budget/DeleteView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    iget-object v0, v3, Lcom/notriddle/budget/DeleteView;->mPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/DeleteView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 237
    iget-object v0, v3, Lcom/notriddle/budget/DeleteView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Lcom/notriddle/budget/DeleteView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method private cancelSwipe()V
    # InsDal Modified --> local register: (4)#
    .registers 8

    move-object/16 v4, p0


    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/DeleteView;--->cancelSwipe()V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-virtual {v4}, Lcom/notriddle/budget/DeleteView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v4}, Lcom/notriddle/budget/DeleteView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 254
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 256
    :cond_0
    iput v2, v4, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    .line 257
    iget-object v1, v4, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, v4, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 259
    iput-object v3, v4, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 261
    :cond_1
    iget-object v1, v4, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    .line 262
    iget-object v0, v4, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 263
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iput-object v3, v4, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 264
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 266
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/notriddle/budget/DeleteView;->setClickable(Z)V

    .line 267
    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/notriddle/budget/DeleteView;->setInnerViewPosition(F)V

    .line 268
    invoke-virtual {v4, v2}, Lcom/notriddle/budget/DeleteView;->setBackgroundResource(I)V

    .line 269
    const/4 v1, -0x2

    invoke-direct {v4, v1}, Lcom/notriddle/budget/DeleteView;->setInnerViewHeight(I)V

    .line 270
    return-void
.end method

.method private init(Landroid/content/Context;)V
    # InsDal Modified --> local register: (5)#
    .registers 10

    move-object/16 v5, p0
    move-object/16 v6, p1

    .param p1, "cntx"    # Landroid/content/Context;

    .prologue

    const-string v7, "M_InsDal"
    const-string v8, "Lcom/notriddle/budget/DeleteView;--->init(Landroid/content/Context;)V"
    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 79
    iput-object v3, v5, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    .line 80
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v5, Lcom/notriddle/budget/DeleteView;->mSwipeStart:F

    .line 81
    const-wide/16 v1, -0x1

    iput-wide v1, v5, Lcom/notriddle/budget/DeleteView;->mSwipeStartTime:J

    .line 82
    iput v4, v5, Lcom/notriddle/budget/DeleteView;->mBackground:I

    .line 83
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 84
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v5, Lcom/notriddle/budget/DeleteView;->mTouchSlop:I

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, v5, Lcom/notriddle/budget/DeleteView;->mFlingSlop:I

    .line 86
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, v5, Lcom/notriddle/budget/DeleteView;->mFlingCap:I

    .line 87
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, v5, Lcom/notriddle/budget/DeleteView;->mPressTimeout:I

    .line 88
    new-instance v1, Lcom/notriddle/budget/DeleteView$1;

    invoke-direct {v1, v5}, Lcom/notriddle/budget/DeleteView$1;-><init>(Lcom/notriddle/budget/DeleteView;)V

    iput-object v1, v5, Lcom/notriddle/budget/DeleteView;->mPressRunnable:Ljava/lang/Runnable;

    .line 95
    iget v1, v5, Lcom/notriddle/budget/DeleteView;->mPressTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v5, Lcom/notriddle/budget/DeleteView;->mLongPressTimeout:I

    .line 96
    new-instance v1, Lcom/notriddle/budget/DeleteView$2;

    invoke-direct {v1, v5}, Lcom/notriddle/budget/DeleteView$2;-><init>(Lcom/notriddle/budget/DeleteView;)V

    iput-object v1, v5, Lcom/notriddle/budget/DeleteView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v1, Lcom/notriddle/budget/DeleteView$3;

    invoke-direct {v1, v5}, Lcom/notriddle/budget/DeleteView$3;-><init>(Lcom/notriddle/budget/DeleteView;)V

    iput-object v1, v5, Lcom/notriddle/budget/DeleteView;->mUnpressRunnable:Ljava/lang/Runnable;

    .line 109
    iput v4, v5, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    .line 110
    iput-object v3, v5, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 111
    iput-object v3, v5, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 112
    iput-boolean v4, v5, Lcom/notriddle/budget/DeleteView;->mChecked:Z

    .line 113
    iput-object v3, v5, Lcom/notriddle/budget/DeleteView;->mListener:Lcom/notriddle/budget/DeleteView$OnDeleteListener;

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/notriddle/budget/DeleteView;->setClickable(Z)V

    .line 115
    return-void
.end method

.method private setInnerViewHeight(I)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move/16 v2, p1

    .param p1, "height"    # I

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/DeleteView;--->setInnerViewHeight(I)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, v1, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    iget-object v0, v1, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 364
    return-void
.end method

.method private setInnerViewPosition(F)V
    # InsDal Modified --> local register: (3)#
    .registers 8

    move-object/16 v3, p0
    move/16 v4, p1

    .param p1, "position"    # F

    .prologue

    const-string v5, "M_InsDal"
    const-string v6, "Lcom/notriddle/budget/DeleteView;--->setInnerViewPosition(F)V"
    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, v3, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 356
    iget-object v1, v3, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v0, v1

    .line 357
    .local v0, "width":F
    iget-object v1, v3, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v0, v2

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 359
    return-void
.end method

.method private startAnimation()V
    # InsDal Modified --> local register: (11)#
    .registers 15

    move-object/16 v11, p0


    .prologue

    const-string v12, "M_InsDal"
    const-string v13, "Lcom/notriddle/budget/DeleteView;--->startAnimation()V"
    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 309
    iget-object v7, v11, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 310
    iget-object v7, v11, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 311
    .local v5, "velocityChk":F
    iget-object v7, v11, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 312
    .local v3, "position":F
    cmpl-float v7, v5, v2

    if-nez v7, :cond_1

    neg-float v6, v3

    .line 313
    .local v6, "velocityChk2":F
    :goto_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, v11, Lcom/notriddle/budget/DeleteView;->mFlingCap:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    .line 314
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v6, v7

    .line 315
    iget v9, v11, Lcom/notriddle/budget/DeleteView;->mFlingCap:I

    int-to-float v9, v9

    mul-float v4, v7, v9

    .line 317
    :goto_1
    cmpl-float v7, v3, v2

    if-lez v7, :cond_2

    move v7, v8

    :goto_2
    iget-object v9, v11, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    mul-int/2addr v7, v9

    int-to-float v1, v7

    .line 319
    .local v1, "farPosition":F
    div-float v7, v4, v3

    cmpl-float v7, v7, v2

    if-lez v7, :cond_0

    move v2, v1

    .line 321
    .local v2, "finalPosition":F
    :cond_0
    sub-float v0, v2, v3

    .line 322
    .local v0, "displacement":F
    const-string v7, "innerViewPosition"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v3, v9, v10

    aput v2, v9, v8

    invoke-static {v11, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, v11, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 326
    iget-object v7, v11, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    div-float v8, v0, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 327
    iget-object v7, v11, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/notriddle/budget/DeleteView$5;

    invoke-direct {v8, v11, v2}, Lcom/notriddle/budget/DeleteView$5;-><init>(Lcom/notriddle/budget/DeleteView;F)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    iget-object v7, v11, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    const/4 v7, 0x3

    iput v7, v11, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    .line 340
    iget-object v7, v11, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 341
    return-void

    .end local v0    # "displacement":F
    .end local v1    # "farPosition":F
    .end local v2    # "finalPosition":F
    .end local v6    # "velocityChk2":F
    :cond_1
    move v6, v5

    .line 312
    goto :goto_0

    .line 317
    .restart local v6    # "velocityChk2":F
    :cond_2
    const/4 v7, -0x1

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_1
.end method


# virtual methods
.method public getInnerView()Landroid/view/View;
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView;--->getInnerView()Landroid/view/View;"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, v1, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    return-object v0
.end method

.method public getPaddingY()I
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView;--->getPaddingY()I"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v1}, Lcom/notriddle/budget/DeleteView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public isChecked()Z
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView;--->isChecked()Z"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v0, v1, Lcom/notriddle/budget/DeleteView;->mChecked:Z

    return v0
.end method

.method public onFinishInflate()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue
    .line 118
    invoke-super {v1}, Landroid/widget/FrameLayout;->onFinishInflate()V


    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView;--->onFinishInflate()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/notriddle/budget/DeleteView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    .line 120
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    # InsDal Modified --> local register: (7)#
    .registers 12

    move-object/16 v7, p0
    move-object/16 v8, p1

    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue

    const-string v9, "M_InsDal"
    const-string v10, "Lcom/notriddle/budget/DeleteView;--->onTouchEvent(Landroid/view/MotionEvent;)Z"
    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 136
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 137
    .local v0, "x":F
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 226
    :pswitch_0
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid MotionEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_1
    iget v1, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    packed-switch v1, :pswitch_data_1

    .line 155
    :pswitch_2
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state with ACTION_DOWN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :pswitch_3
    iput v5, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    .line 142
    iput v0, v7, Lcom/notriddle/budget/DeleteView;->mSwipeStart:F

    .line 143
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/notriddle/budget/DeleteView;->mSwipeStartTime:J

    .line 144
    iget-object v1, v7, Lcom/notriddle/budget/DeleteView;->mUnpressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v1}, Lcom/notriddle/budget/DeleteView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    iget-object v1, v7, Lcom/notriddle/budget/DeleteView;->mPressRunnable:Ljava/lang/Runnable;

    iget v2, v7, Lcom/notriddle/budget/DeleteView;->mPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v7, v1, v2, v3}, Lcom/notriddle/budget/DeleteView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    iget-object v1, v7, Lcom/notriddle/budget/DeleteView;->mLongPressRunnable:Ljava/lang/Runnable;

    iget v2, v7, Lcom/notriddle/budget/DeleteView;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v7, v1, v2, v3}, Lcom/notriddle/budget/DeleteView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    :cond_0
    :goto_0
    :pswitch_4
    const-string v1, "Budget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v5

    .line 149
    :pswitch_5
    invoke-direct {v7, v0}, Lcom/notriddle/budget/DeleteView;->cancelAnimation(F)V

    goto :goto_0

    .line 159
    :pswitch_6
    iget v1, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    packed-switch v1, :pswitch_data_2

    .line 177
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state with ACTION_MOVE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :pswitch_7
    iget v1, v7, Lcom/notriddle/budget/DeleteView;->mSwipeStart:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v7, Lcom/notriddle/budget/DeleteView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 162
    invoke-direct {v7}, Lcom/notriddle/budget/DeleteView;->cancelPressed()V

    .line 163
    move-object v8, v7

    invoke-virtual {v7}, Lcom/notriddle/budget/DeleteView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v8}, Lcom/notriddle/budget/DeleteView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    const/4 v1, 0x2

    iput v1, v8, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    iget v1, v8, Lcom/notriddle/budget/DeleteView;->mBackground:I

    invoke-virtual {v8, v1}, Lcom/notriddle/budget/DeleteView;->setBackgroundResource(I)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v8, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v6}, Lcom/notriddle/budget/DeleteView;->setClickable(Z)V

    goto :goto_0

    .line 167
    :pswitch_8
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, v7, Lcom/notriddle/budget/DeleteView;->mSwipeStart:F

    sub-float/2addr v1, v2

    invoke-direct {v7, v1}, Lcom/notriddle/budget/DeleteView;->setInnerViewPosition(F)V

    .line 168
    iget-object v1, v7, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 171
    :pswitch_9
    invoke-direct {v7, v0}, Lcom/notriddle/budget/DeleteView;->cancelAnimation(F)V

    goto :goto_0

    .line 181
    :pswitch_a
    iget v1, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    packed-switch v1, :pswitch_data_3

    .line 200
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state with ACTION_UP: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :pswitch_b
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, v7, Lcom/notriddle/budget/DeleteView;->mSwipeStartTime:J

    sub-long/2addr v1, v3

    iget v3, v7, Lcom/notriddle/budget/DeleteView;->mLongPressTimeout:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 186
    iget-object v1, v7, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 187
    invoke-virtual {v7}, Lcom/notriddle/budget/DeleteView;->performClick()Z

    .line 189
    :cond_2
    invoke-direct {v7}, Lcom/notriddle/budget/DeleteView;->cancelPressed()V

    .line 190
    iput v6, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    goto/16 :goto_0

    .line 193
    :pswitch_c
    invoke-direct {v7}, Lcom/notriddle/budget/DeleteView;->startAnimation()V

    goto/16 :goto_0

    .line 204
    :pswitch_d
    iget v1, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    packed-switch v1, :pswitch_data_4

    .line 218
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state with ACTION_CANCEL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :pswitch_e
    invoke-direct {v7}, Lcom/notriddle/budget/DeleteView;->cancelPressed()V

    .line 207
    iput v6, v7, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    goto/16 :goto_0

    .line 210
    :pswitch_f
    invoke-direct {v7}, Lcom/notriddle/budget/DeleteView;->startAnimation()V

    goto/16 :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 139
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 159
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
    .end packed-switch

    .line 181
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 204
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final performDelete()V
    # InsDal Modified --> local register: (9)#
    .registers 13

    move-object/16 v9, p0


    .prologue

    const-string v10, "M_InsDal"
    const-string v11, "Lcom/notriddle/budget/DeleteView;--->performDelete()V"
    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0xfa

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 273
    const-string v2, "Budget"

    const-string v3, "performDelete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v9}, Lcom/notriddle/budget/DeleteView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v9}, Lcom/notriddle/budget/DeleteView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 277
    :cond_0
    const/4 v2, 0x4

    iput v2, v9, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    .line 278
    iget-object v2, v9, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, v9, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 280
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/notriddle/budget/DeleteView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 282
    :cond_1
    invoke-virtual {v9, v5}, Lcom/notriddle/budget/DeleteView;->setClickable(Z)V

    .line 283
    invoke-virtual {v9}, Lcom/notriddle/budget/DeleteView;->getPaddingY()I

    move-result v0

    .line 284
    .local v0, "oldPadding":I
    const-string v2, "paddingY"

    new-array v3, v4, [I

    aput v0, v3, v5

    aput v5, v3, v6

    invoke-static {v9, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 287
    .local v1, "paddingAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 289
    const-string v2, "innerViewHeight"

    new-array v3, v4, [I

    iget-object v4, v9, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    aput v4, v3, v5

    aput v5, v3, v6

    invoke-static {v9, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v9, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 292
    iget-object v2, v9, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 293
    iget-object v2, v9, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/notriddle/budget/DeleteView$4;

    invoke-direct {v3, v9, v1, v0}, Lcom/notriddle/budget/DeleteView$4;-><init>(Lcom/notriddle/budget/DeleteView;Landroid/animation/ObjectAnimator;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 305
    iget-object v2, v9, Lcom/notriddle/budget/DeleteView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 306
    return-void
.end method

.method public setChecked(Z)V
    # InsDal Modified --> local register: (1)#
    .registers 6

    move-object/16 v1, p0
    move/16 v2, p1

    .param p1, "checked"    # Z

    .prologue

    const-string v3, "M_InsDal"
    const-string v4, "Lcom/notriddle/budget/DeleteView;--->setChecked(Z)V"
    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-boolean v2, v1, Lcom/notriddle/budget/DeleteView;->mChecked:Z

    .line 127
    iget-object v0, v1, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, v1, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public setInnerView(Landroid/view/View;)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move-object/16 v3, p1

    .param p1, "innerView"    # Landroid/view/View;

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteView;--->setInnerView(Landroid/view/View;)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v2, v3}, Lcom/notriddle/budget/DeleteView;->removeView(Landroid/view/View;)V

    .line 370
    :cond_0
    iput-object v3, v2, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    .line 371
    invoke-virtual {v2, v3}, Lcom/notriddle/budget/DeleteView;->addView(Landroid/view/View;)V

    .line 372
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, v2, Lcom/notriddle/budget/DeleteView;->mInnerView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, v2, Lcom/notriddle/budget/DeleteView;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 375
    :cond_1
    iget v0, v2, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 376
    invoke-direct {v2}, Lcom/notriddle/budget/DeleteView;->cancelPressed()V

    .line 377
    const/4 v0, 0x0

    iput v0, v2, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    .line 381
    :cond_2
    :goto_0
    return-void

    .line 378
    :cond_3
    iget v0, v2, Lcom/notriddle/budget/DeleteView;->mSwipeState:I

    if-eqz v0, :cond_2

    .line 379
    invoke-direct {v2}, Lcom/notriddle/budget/DeleteView;->cancelSwipe()V

    goto :goto_0
.end method

.method public setOnDeleteListener(Lcom/notriddle/budget/DeleteView$OnDeleteListener;)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move-object/16 v1, p1

    .param p1, "listener"    # Lcom/notriddle/budget/DeleteView$OnDeleteListener;

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView;--->setOnDeleteListener(Lcom/notriddle/budget/DeleteView$OnDeleteListener;)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput-object v1, v0, Lcom/notriddle/budget/DeleteView;->mListener:Lcom/notriddle/budget/DeleteView$OnDeleteListener;

    .line 399
    return-void
.end method

.method public setPaddingY(I)V
    # InsDal Modified --> local register: (2)#
    .registers 7

    move-object/16 v2, p0
    move/16 v3, p1

    .param p1, "pad"    # I

    .prologue

    const-string v4, "M_InsDal"
    const-string v5, "Lcom/notriddle/budget/DeleteView;--->setPaddingY(I)V"
    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v2}, Lcom/notriddle/budget/DeleteView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v2}, Lcom/notriddle/budget/DeleteView;->getPaddingRight()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/notriddle/budget/DeleteView;->setPadding(IIII)V

    .line 391
    return-void
.end method

.method public setSwipeBackgroundResource(I)V
    # InsDal Modified --> local register: (0)#
    .registers 5

    move-object/16 v0, p0
    move/16 v1, p1

    .param p1, "background"    # I

    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView;--->setSwipeBackgroundResource(I)V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iput v1, v0, Lcom/notriddle/budget/DeleteView;->mBackground:I

    .line 395
    return-void
.end method

.method public toggle()V
    # InsDal Modified --> local register: (1)#
    .registers 5

    move-object/16 v1, p0


    .prologue

    const-string v2, "M_InsDal"
    const-string v3, "Lcom/notriddle/budget/DeleteView;--->toggle()V"
    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, v1, Lcom/notriddle/budget/DeleteView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/notriddle/budget/DeleteView;->setChecked(Z)V

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
