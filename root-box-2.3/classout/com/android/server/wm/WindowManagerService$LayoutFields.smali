.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field static final CLEAR_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field mAdjResult:I

.field private mButtonBrightness:F

.field mDimming:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 636
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    .line 644
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    .line 646
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 648
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    .line 649
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDimming:Z

    .line 650
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    .line 651
    iput v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    .line 652
    iput v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    .line 653
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .registers 2
    .parameter "x0"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 636
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 636
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 636
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 636
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return p1
.end method
