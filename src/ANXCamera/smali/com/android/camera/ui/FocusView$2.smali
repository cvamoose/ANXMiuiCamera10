.class Lcom/android/camera/ui/FocusView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 750
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 751
    return v1

    .line 754
    :cond_0
    nop

    .line 755
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1200(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    const/16 v2, 0xa3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa7

    if-eq v0, v2, :cond_1

    const/16 v2, 0xab

    if-eq v0, v2, :cond_1

    const/16 v2, 0xad

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 762
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 763
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-nez v0, :cond_2

    .line 767
    move v1, v3

    goto :goto_0

    .line 763
    :cond_2
    nop

    .line 767
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 771
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 772
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa6

    .line 773
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 774
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->removeTiltShiftMask()V

    .line 776
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa1

    .line 777
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 778
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 780
    const/16 v0, 0x5a

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    .line 782
    :cond_3
    goto :goto_1

    .line 785
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1, v3}, Lcom/android/camera/ui/FocusView;->access$902(Lcom/android/camera/ui/FocusView;Z)Z

    .line 786
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1600(Lcom/android/camera/ui/FocusView;)V

    .line 787
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;)V

    .line 790
    :cond_5
    :goto_1
    return v3
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 796
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$900(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 797
    return v0

    .line 800
    :cond_0
    if-nez p2, :cond_1

    .line 801
    return v0

    .line 804
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 805
    return v0

    .line 808
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result p1

    .line 809
    const/16 p2, 0xc8

    const/16 v1, 0x5a

    if-ne p1, p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    div-int/2addr p2, v1

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    :cond_3
    const/16 p2, 0x64

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 810
    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    div-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    goto/16 :goto_2

    .line 814
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2100(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    .line 815
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    if-eqz p2, :cond_8

    if-eq p2, v1, :cond_7

    const/16 v1, 0xb4

    if-eq p2, v1, :cond_6

    const/16 p4, 0x10e

    if-eq p2, p4, :cond_5

    goto :goto_0

    .line 826
    :cond_5
    int-to-float p1, p1

    sub-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_0

    .line 823
    :cond_6
    int-to-float p1, p1

    add-float/2addr p1, p4

    float-to-int p1, p1

    .line 824
    goto :goto_0

    .line 820
    :cond_7
    int-to-float p1, p1

    add-float/2addr p1, p3

    float-to-int p1, p1

    .line 821
    goto :goto_0

    .line 817
    :cond_8
    int-to-float p1, p1

    sub-float/2addr p1, p4

    float-to-int p1, p1

    .line 818
    nop

    .line 834
    :goto_0
    sget p2, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sget p3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float p3, p3

    const/high16 p4, 0x40800000    # 4.0f

    div-float/2addr p3, p4

    div-float/2addr p2, p3

    .line 835
    int-to-float p3, p1

    div-float/2addr p3, p2

    float-to-int p2, p3

    .line 836
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    sget p4, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    neg-int p4, p4

    div-int/lit8 p4, p4, 0x2

    .line 837
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2300()I

    move-result v1

    sub-int/2addr p4, v1

    sget v1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v1, v1, 0x2

    .line 836
    invoke-static {p2, p4, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p4

    invoke-static {p3, p4}, Lcom/android/camera/ui/FocusView;->access$2202(Lcom/android/camera/ui/FocusView;I)I

    .line 838
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-ne p2, p3, :cond_9

    .line 839
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2, p1}, Lcom/android/camera/ui/FocusView;->access$2102(Lcom/android/camera/ui/FocusView;I)I

    .line 842
    :cond_9
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/camera/ui/FocusView;->access$2402(Lcom/android/camera/ui/FocusView;Z)Z

    .line 844
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2500(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    .line 846
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2600(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-eq p1, p3, :cond_c

    .line 847
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_a

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 848
    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2600(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-ge p1, p3, :cond_a

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 849
    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2600(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    if-lt p3, v1, :cond_a

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 850
    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p3

    if-ge p1, p3, :cond_a

    .line 851
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2700(Lcom/android/camera/ui/FocusView;)V

    .line 852
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$2600(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/android/camera/ui/FocusView;->access$2802(Lcom/android/camera/ui/FocusView;I)I

    .line 853
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3, p4}, Lcom/android/camera/ui/FocusView;->access$302(Lcom/android/camera/ui/FocusView;I)I

    goto :goto_1

    .line 854
    :cond_a
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    const/4 p4, 0x4

    if-eq p3, p4, :cond_b

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2600(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-le p1, p3, :cond_b

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 855
    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2600(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    if-ge p3, v1, :cond_b

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 856
    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p3

    if-lt p1, p3, :cond_b

    .line 857
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2700(Lcom/android/camera/ui/FocusView;)V

    .line 858
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$2600(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/android/camera/ui/FocusView;->access$2802(Lcom/android/camera/ui/FocusView;I)I

    .line 859
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3, p4}, Lcom/android/camera/ui/FocusView;->access$302(Lcom/android/camera/ui/FocusView;I)I

    .line 863
    :cond_b
    :goto_1
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3, p1, v0}, Lcom/android/camera/ui/FocusView;->access$2900(Lcom/android/camera/ui/FocusView;IZ)V

    .line 866
    :cond_c
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$3100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p4}, Lcom/android/camera/ui/FocusView;->access$3000(Lcom/android/camera/ui/FocusView;)F

    move-result p4

    invoke-virtual {p1, p3, p4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvChanged(FF)V

    .line 868
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    if-ne p1, p2, :cond_e

    .line 869
    :cond_d
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1, p2}, Lcom/android/camera/ui/FocusView;->access$302(Lcom/android/camera/ui/FocusView;I)I

    .line 870
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$600(Lcom/android/camera/ui/FocusView;)V

    .line 871
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 873
    :cond_e
    return p2

    .line 811
    :cond_f
    :goto_2
    return v0
.end method