.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$DummyAnimation;,
        Lcom/android/server/wm/WindowManagerService$PolicyThread;,
        Lcom/android/server/wm/WindowManagerService$WMThread;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_ORIENTATION:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_BOOT:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DRAG:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_SCREENSHOT:Z = false

.field static final DEBUG_SCREEN_ON:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_TOKEN_MOVEMENT:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAYER_OFFSET_BLUR:I = 0x2

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final MASK_LAYER:I = 0x1e8480

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field final mAllowBootMessages:Z

.field private mAllowDisableKeyguard:I

.field mAltOrientation:Z

.field mAnimationPending:Z

.field mAppDisplayHeight:I

.field mAppDisplayWidth:I

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBaseDisplayHeight:I

.field mBaseDisplayWidth:I

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurDisplayHeight:I

.field mCurDisplayWidth:I

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mDeferredRotationPauseCount:I

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mDragInputHandler:Landroid/view/InputHandler;

.field mDragState:Lcom/android/server/wm/DragState;

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFakeWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/FakeWindowImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field private mForceDisableHardwareKeyboard:Z

.field mForceDisplayEnabled:Z

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardEnabled:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/wm/Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mInputManager:Lcom/android/server/wm/InputManager;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLastWindowForcedOrientation:I

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field mRebuildTmp:[Lcom/android/server/wm/WindowState;

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field final mSetLandscapeProperty:Z

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/os/IRemoteCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/wm/Watermark;

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

.field mWindowAnimationScale:F

.field private mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6507
    new-instance v0, Lcom/android/server/wm/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V
    .registers 16
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "showBootMsgs"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/high16 v8, -0x4080

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 754
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 260
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    .line 265
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .line 267
    new-instance v3, Lcom/android/server/wm/WindowManagerService$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v5, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    .line 286
    new-instance v3, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 317
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 323
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 328
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 348
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 359
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 365
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 382
    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 387
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 393
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 404
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 411
    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    .line 416
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 425
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 427
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 430
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 431
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 432
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 433
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 445
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    .line 446
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 447
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 448
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 449
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 450
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 451
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 452
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 453
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 455
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 456
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    .line 457
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    .line 458
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 462
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 463
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 464
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 465
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 466
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 467
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 468
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    .line 470
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 472
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 477
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 489
    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 493
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 494
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 495
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 496
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 497
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 499
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 500
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    .line 501
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    .line 505
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 506
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 507
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 508
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 510
    new-instance v3, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 512
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 513
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 517
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 521
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 522
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 528
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 532
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 535
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 538
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 543
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 544
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 546
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 547
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 548
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    .line 549
    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    .line 560
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 564
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 565
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 569
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisableHardwareKeyboard:Z

    .line 577
    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 578
    new-instance v3, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDragInputHandler:Landroid/view/InputHandler;

    .line 639
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 642
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 644
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 651
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 6236
    new-instance v3, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 7321
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 755
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 756
    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    .line 757
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    .line 758
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSetLandscapeProperty:Z

    .line 763
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 764
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 765
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 766
    .local v1, pmc:Landroid/os/PowerManager;
    const-string v3, "SCREEN_FROZEN"

    invoke-virtual {v1, v10, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 768
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 770
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 771
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 774
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "window_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 776
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "transition_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 780
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 781
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 784
    const/16 v3, 0xa

    const-string v4, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 786
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 788
    new-instance v3, Lcom/android/server/wm/InputManager;

    invoke-direct {v3, p1, p0}, Lcom/android/server/wm/InputManager;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    .line 790
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisableHardwareKeyboard:Z

    .line 793
    new-instance v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v2, v3, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 794
    .local v2, thr:Lcom/android/server/wm/WindowManagerService$PolicyThread;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;->start()V

    .line 796
    monitor-enter v2

    .line 797
    :goto_22d
    :try_start_22d
    iget-boolean v3, v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_22f
    .catchall {:try_start_22d .. :try_end_22f} :catchall_245

    if-nez v3, :cond_237

    .line 799
    :try_start_231
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_234
    .catchall {:try_start_231 .. :try_end_234} :catchall_245
    .catch Ljava/lang/InterruptedException; {:try_start_231 .. :try_end_234} :catch_235

    goto :goto_22d

    .line 800
    :catch_235
    move-exception v3

    goto :goto_22d

    .line 803
    :cond_237
    :try_start_237
    monitor-exit v2
    :try_end_238
    .catchall {:try_start_237 .. :try_end_238} :catchall_245

    .line 805
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v3}, Lcom/android/server/wm/InputManager;->start()V

    .line 808
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 809
    return-void

    .line 803
    :catchall_245
    move-exception v3

    :try_start_246
    monitor-exit v2
    :try_end_247
    .catchall {:try_start_246 .. :try_end_247} :catchall_245

    throw v3
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZLcom/android/server/wm/WindowManagerService$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/WindowManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 31
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 863
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 864
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v20, v0

    .line 865
    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 867
    .local v14, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 868
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 870
    .local v8, attached:Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_236

    .line 871
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 872
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_207

    .line 873
    add-int/lit8 v12, v21, -0x1

    .line 874
    .local v12, index:I
    if-ltz v12, :cond_df

    .line 878
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8a

    .line 880
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 881
    const/16 v21, 0x0

    .line 1002
    .end local v12           #index:I
    :cond_5b
    :goto_5b
    if-eqz p2, :cond_6c

    .line 1004
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1062
    .end local v21           #tokenWindowsPos:I
    :cond_6c
    :goto_6c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_89

    if-eqz p2, :cond_89

    .line 1063
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    :cond_89
    return-void

    .line 883
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_8a
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 884
    .local v7, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v7, :cond_c0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c0

    .line 886
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 887
    add-int/lit8 v21, v21, -0x1

    goto :goto_5b

    .line 889
    :cond_c0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I

    move-result v16

    .line 890
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_5b

    .line 899
    add-int/lit8 v26, v16, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 900
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5b

    .line 910
    .end local v7           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v16           #newIdx:I
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 911
    .local v4, NA:I
    const/16 v17, 0x0

    .line 912
    .local v17, pos:Lcom/android/server/wm/WindowState;
    add-int/lit8 v11, v4, -0x1

    .local v11, i:I
    :goto_ed
    if-ltz v11, :cond_105

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .line 914
    .local v19, t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_148

    .line 915
    add-int/lit8 v11, v11, -0x1

    .line 929
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_105
    if-eqz v17, :cond_16f

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 932
    .local v7, atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_13d

    .line 933
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 934
    .local v5, NC:I
    if-lez v5, :cond_13d

    .line 935
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 936
    .local v9, bottom:Lcom/android/server/wm/WindowState;
    iget v0, v9, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_13d

    .line 937
    move-object/from16 v17, v9

    .line 941
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/wm/WindowState;
    :cond_13d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_5b

    .line 922
    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    :cond_148
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_16a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_16a

    .line 923
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 912
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_16a
    add-int/lit8 v11, v11, -0x1

    goto :goto_ed

    .line 952
    .local v6, NW:I
    :cond_16d
    add-int/lit8 v11, v11, -0x1

    .line 945
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_16f
    if-ltz v11, :cond_199

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .line 947
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 948
    .restart local v6       #NW:I
    if-lez v6, :cond_16d

    .line 949
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v6, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 954
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_199
    if-eqz v17, :cond_1de

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 958
    .restart local v7       #atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_1d3

    .line 959
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 960
    .restart local v5       #NC:I
    if-lez v5, :cond_1d3

    .line 961
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v5, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 962
    .local v22, top:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_1d3

    .line 963
    move-object/from16 v17, v22

    .line 967
    .end local v5           #NC:I
    .end local v22           #top:Lcom/android/server/wm/WindowState;
    :cond_1d3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_5b

    .line 970
    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    :cond_1de
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 971
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_1e3
    if-ge v11, v3, :cond_1f5

    .line 972
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 973
    .local v23, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v0, v15, :cond_204

    .line 981
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_1f5
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 982
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5b

    .line 971
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    :cond_204
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e3

    .line 988
    .end local v4           #NA:I
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_207
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 989
    .restart local v15       #myLayer:I
    add-int/lit8 v11, v3, -0x1

    .restart local v11       #i:I
    :goto_20d
    if-ltz v11, :cond_221

    .line 990
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v0, v15, :cond_233

    .line 991
    add-int/lit8 v11, v11, 0x1

    .line 995
    :cond_221
    if-gez v11, :cond_224

    const/4 v11, 0x0

    .line 999
    :cond_224
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1000
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5b

    .line 989
    :cond_233
    add-int/lit8 v11, v11, -0x1

    goto :goto_20d

    .line 1010
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    :cond_236
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1011
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 1012
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 1013
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 1014
    .local v25, windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_24b
    if-ge v11, v4, :cond_28d

    .line 1015
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1016
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 1017
    .local v24, wSublayer:I
    move/from16 v0, v24

    if-lt v0, v13, :cond_269

    .line 1018
    move/from16 v13, v24

    .line 1019
    move-object/from16 v25, v23

    .line 1021
    :cond_269
    if-gez v18, :cond_2a9

    .line 1024
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_2c8

    .line 1025
    if-eqz p2, :cond_280

    .line 1027
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1029
    :cond_280
    if-ltz v24, :cond_284

    move-object/from16 v23, v8

    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_284
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1046
    .end local v24           #wSublayer:I
    :cond_28d
    :goto_28d
    if-lt v11, v4, :cond_6c

    .line 1047
    if-eqz p2, :cond_29e

    .line 1049
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :cond_29e
    if-gez v18, :cond_2cb

    .line 1052
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_6c

    .line 1036
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    .restart local v24       #wSublayer:I
    :cond_2a9
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_2c8

    .line 1037
    if-eqz p2, :cond_2be

    .line 1039
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1041
    :cond_2be
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_28d

    .line 1014
    :cond_2c8
    add-int/lit8 v11, v11, 0x1

    goto :goto_24b

    .line 1054
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    .end local v24           #wSublayer:I
    :cond_2cb
    if-ltz v13, :cond_2d8

    .end local v25           #windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    :goto_2cd
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_6c

    .restart local v25       #windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    :cond_2d8
    move-object/from16 v25, v8

    goto :goto_2cd
.end method

.method private applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .registers 9
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 3041
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_85

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v2, :cond_85

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 3043
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 3044
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_29

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_1a
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3106
    .local v0, a:Landroid/view/animation/Animation;
    :goto_1e
    if-eqz v0, :cond_23

    .line 3115
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3121
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_23
    :goto_23
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_89

    const/4 v2, 0x1

    :goto_28
    return v2

    .line 3044
    :cond_29
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_1a

    .line 3047
    :cond_2c
    const/4 v1, 0x0

    .line 3048
    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_8c

    .line 3100
    :goto_30
    if-eqz v1, :cond_83

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_36
    goto :goto_1e

    .line 3050
    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_37
    if-eqz p4, :cond_3b

    const/4 v1, 0x4

    .line 3053
    :goto_3a
    goto :goto_30

    .line 3050
    :cond_3b
    const/4 v1, 0x5

    goto :goto_3a

    .line 3055
    :sswitch_3d
    if-eqz p4, :cond_41

    const/4 v1, 0x6

    .line 3058
    :goto_40
    goto :goto_30

    .line 3055
    :cond_41
    const/4 v1, 0x7

    goto :goto_40

    .line 3060
    :sswitch_43
    if-eqz p4, :cond_48

    const/16 v1, 0x8

    .line 3063
    :goto_47
    goto :goto_30

    .line 3060
    :cond_48
    const/16 v1, 0x9

    goto :goto_47

    .line 3065
    :sswitch_4b
    if-eqz p4, :cond_50

    const/16 v1, 0xa

    .line 3068
    :goto_4f
    goto :goto_30

    .line 3065
    :cond_50
    const/16 v1, 0xb

    goto :goto_4f

    .line 3070
    :sswitch_53
    if-eqz p4, :cond_58

    const/16 v1, 0xc

    .line 3073
    :goto_57
    goto :goto_30

    .line 3070
    :cond_58
    const/16 v1, 0xd

    goto :goto_57

    .line 3075
    :sswitch_5b
    if-eqz p4, :cond_60

    const/16 v1, 0xe

    .line 3078
    :goto_5f
    goto :goto_30

    .line 3075
    :cond_60
    const/16 v1, 0xf

    goto :goto_5f

    .line 3080
    :sswitch_63
    if-eqz p4, :cond_68

    const/16 v1, 0x10

    .line 3083
    :goto_67
    goto :goto_30

    .line 3080
    :cond_68
    const/16 v1, 0x11

    goto :goto_67

    .line 3085
    :sswitch_6b
    if-eqz p4, :cond_70

    const/16 v1, 0x12

    .line 3088
    :goto_6f
    goto :goto_30

    .line 3085
    :cond_70
    const/16 v1, 0x13

    goto :goto_6f

    .line 3090
    :sswitch_73
    if-eqz p4, :cond_78

    const/16 v1, 0x14

    .line 3093
    :goto_77
    goto :goto_30

    .line 3090
    :cond_78
    const/16 v1, 0x15

    goto :goto_77

    .line 3095
    :sswitch_7b
    if-eqz p4, :cond_80

    const/16 v1, 0x16

    :goto_7f
    goto :goto_30

    :cond_80
    const/16 v1, 0x17

    goto :goto_7f

    .line 3100
    :cond_83
    const/4 v0, 0x0

    goto :goto_36

    .line 3118
    .end local v1           #animAttr:I
    :cond_85
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAnimation()V

    goto :goto_23

    .line 3121
    :cond_89
    const/4 v2, 0x0

    goto :goto_28

    .line 3048
    nop

    :sswitch_data_8c
    .sparse-switch
        0x1006 -> :sswitch_37
        0x1008 -> :sswitch_43
        0x100a -> :sswitch_53
        0x100d -> :sswitch_63
        0x100e -> :sswitch_73
        0x2007 -> :sswitch_3d
        0x2009 -> :sswitch_4b
        0x200b -> :sswitch_5b
        0x200c -> :sswitch_6b
        0x200f -> :sswitch_7b
    .end sparse-switch
.end method

.method private final assignLayersLocked()V
    .registers 8

    .prologue
    .line 7281
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7282
    .local v0, N:I
    const/4 v1, 0x0

    .line 7283
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 7292
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_65

    .line 7293
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 7294
    .local v4, w:Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_21

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v5, :cond_21

    if-lez v3, :cond_40

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_40

    .line 7296
    :cond_21
    add-int/lit8 v2, v2, 0x5

    .line 7297
    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 7302
    :goto_25
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_46

    .line 7303
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 7309
    :goto_32
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_59

    .line 7310
    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 7292
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 7299
    :cond_40
    iget v2, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    .line 7300
    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_25

    .line 7304
    :cond_46
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_54

    .line 7305
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_32

    .line 7307
    :cond_54
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_32

    .line 7311
    :cond_59
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_3d

    .line 7312
    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_3d

    .line 7319
    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_65
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 1068
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 1070
    .local v0, fl:I
    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 1084
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 1086
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I
    .registers 17
    .parameter "rotated"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 6016
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 6017
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 6019
    if-eqz p1, :cond_2f

    .line 6020
    move/from16 v4, p4

    .line 6021
    .local v4, unrotDw:I
    move v5, p3

    .line 6026
    .local v5, unrotDh:I
    :goto_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6027
    .local v7, sw:I
    const/4 v8, 0x1

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6028
    const/4 v2, 0x2

    move-object v0, p0

    move v1, v7

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6029
    const/4 v8, 0x3

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6030
    return v7

    .line 6023
    .end local v4           #unrotDw:I
    .end local v5           #unrotDh:I
    .end local v7           #sw:I
    :cond_2f
    move v4, p3

    .line 6024
    .restart local v4       #unrotDw:I
    move/from16 v5, p4

    .restart local v5       #unrotDh:I
    goto :goto_c
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 9138
    const/4 v4, 0x0

    .line 9141
    .local v4, result:Lcom/android/server/wm/WindowState;
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 9142
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 9143
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_32

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    move-object v1, v7

    .line 9146
    .local v1, nextApp:Lcom/android/server/wm/WindowToken;
    :goto_1d
    if-ltz v0, :cond_67

    .line 9147
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 9155
    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v5, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 9158
    .local v5, thisApp:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_34

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v7, :cond_34

    .line 9159
    add-int/lit8 v0, v0, -0x1

    .line 9160
    goto :goto_1d

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_32
    move-object v1, v8

    .line 9143
    goto :goto_1d

    .line 9166
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_34
    if-eqz v5, :cond_60

    if-eqz v1, :cond_60

    if-eq v5, v1, :cond_60

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_60

    .line 9168
    move v3, v2

    .line 9169
    .local v3, origAppIndex:I
    :cond_42
    if-lez v2, :cond_55

    .line 9170
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v7, :cond_49

    .line 9203
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :goto_48
    return-object v8

    .line 9177
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_49
    add-int/lit8 v2, v2, -0x1

    .line 9178
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 9179
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    if-ne v1, v5, :cond_42

    .line 9183
    :cond_55
    if-eq v5, v1, :cond_60

    .line 9187
    move v2, v3

    .line 9188
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 9193
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    :cond_60
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 9196
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_67
    move-object v8, v4

    .line 9203
    goto :goto_48

    .line 9200
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_69
    add-int/lit8 v0, v0, -0x1

    .line 9201
    goto :goto_1d
.end method

.method private computeSmallestWidthAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V
    .registers 21
    .parameter "rotated"
    .parameter "dw"
    .parameter "dh"
    .parameter "density"
    .parameter "outConfig"

    .prologue
    .line 5982
    if-eqz p1, :cond_60

    .line 5983
    move/from16 v2, p3

    .line 5984
    .local v2, unrotDw:I
    move/from16 v6, p2

    .line 5989
    .local v6, unrotDh:I
    :goto_6
    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v4, p4

    move v5, v2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 5990
    .local v8, sw:I
    const/4 v9, 0x1

    move-object v7, p0

    move/from16 v10, p4

    move v11, v6

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 5991
    const/4 v9, 0x2

    move-object v7, p0

    move/from16 v10, p4

    move v11, v2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 5992
    const/4 v9, 0x3

    move-object v7, p0

    move/from16 v10, p4

    move v11, v6

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 5993
    const/16 v10, 0x24

    .line 5995
    .local v10, sl:I
    const/4 v11, 0x0

    move-object v9, p0

    move/from16 v12, p4

    move v13, v2

    move v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 5996
    const/4 v11, 0x1

    move-object v9, p0

    move/from16 v12, p4

    move v13, v6

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 5997
    const/4 v11, 0x2

    move-object v9, p0

    move/from16 v12, p4

    move v13, v2

    move v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 5998
    const/4 v11, 0x3

    move-object v9, p0

    move/from16 v12, p4

    move v13, v6

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 5999
    move-object/from16 v0, p5

    iput v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 6000
    move-object/from16 v0, p5

    iput v10, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 6001
    return-void

    .line 5986
    .end local v2           #unrotDw:I
    .end local v6           #unrotDh:I
    .end local v8           #sw:I
    .end local v10           #sl:I
    :cond_60
    move/from16 v2, p2

    .line 5987
    .restart local v2       #unrotDw:I
    move/from16 v6, p3

    .restart local v6       #unrotDh:I
    goto :goto_6
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I
    .registers 9
    .parameter "win"

    .prologue
    const/4 v4, -0x1

    .line 848
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 849
    .local v2, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 850
    .local v1, jmax:I
    if-nez v1, :cond_b

    move v0, v4

    .line 859
    :cond_a
    :goto_a
    return v0

    .line 853
    :cond_b
    add-int/lit8 v0, v1, -0x1

    .local v0, j:I
    :goto_d
    if-ltz v0, :cond_1e

    .line 854
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 855
    .local v3, wentry:Lcom/android/server/wm/WindowState;
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_a

    .line 853
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .end local v3           #wentry:Lcom/android/server/wm/WindowState;
    :cond_1e
    move v0, v4

    .line 859
    goto :goto_a
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .registers 8
    .parameter "hashCode"

    .prologue
    .line 5837
    const/4 v4, -0x1

    if-ne p1, v4, :cond_8

    .line 5838
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5853
    :goto_7
    return-object v2

    .line 5841
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5842
    :try_start_b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 5843
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5845
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_28

    .line 5846
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5847
    .local v2, w:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 5848
    monitor-exit v5

    goto :goto_7

    .line 5851
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    .end local v3           #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_22
    move-exception v4

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v4

    .line 5845
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    .restart local v3       #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 5851
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_28
    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_22

    .line 5853
    const/4 v2, 0x0

    goto :goto_7
.end method

.method private findWindowOffsetLocked(I)I
    .registers 11
    .parameter "tokenPos"

    .prologue
    .line 4251
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4253
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_24

    .line 4254
    move v2, v0

    .line 4255
    .local v2, i:I
    :cond_f
    if-lez v2, :cond_24

    .line 4256
    add-int/lit8 v2, v2, -0x1

    .line 4257
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4258
    .local v5, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 4259
    add-int/lit8 v7, v2, 0x1

    .line 4304
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :goto_23
    return v7

    .line 4264
    :cond_24
    :goto_24
    if-lez p1, :cond_86

    .line 4267
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 4270
    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_37

    .line 4273
    add-int/lit8 p1, p1, -0x1

    .line 4274
    goto :goto_24

    .line 4276
    :cond_37
    iget-object v7, v6, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4277
    .restart local v2       #i:I
    :cond_3d
    if-lez v2, :cond_83

    .line 4278
    add-int/lit8 v2, v2, -0x1

    .line 4279
    iget-object v7, v6, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4280
    .restart local v5       #win:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4281
    .local v3, j:I
    :cond_4f
    if-lez v3, :cond_71

    .line 4282
    add-int/lit8 v3, v3, -0x1

    .line 4283
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4284
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v7, :cond_4f

    .line 4285
    add-int/lit8 v4, v0, -0x1

    .local v4, pos:I
    :goto_61
    if-ltz v4, :cond_4f

    .line 4286
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6e

    .line 4289
    add-int/lit8 v7, v4, 0x1

    goto :goto_23

    .line 4285
    :cond_6e
    add-int/lit8 v4, v4, -0x1

    goto :goto_61

    .line 4294
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    .end local v4           #pos:I
    :cond_71
    add-int/lit8 v4, v0, -0x1

    .restart local v4       #pos:I
    :goto_73
    if-ltz v4, :cond_3d

    .line 4295
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_80

    .line 4297
    add-int/lit8 v7, v4, 0x1

    goto :goto_23

    .line 4294
    :cond_80
    add-int/lit8 v4, v4, -0x1

    goto :goto_73

    .line 4301
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :cond_83
    add-int/lit8 p1, p1, -0x1

    .line 4302
    goto :goto_24

    .line 4304
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_86
    const/4 v7, 0x0

    goto :goto_23
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V
    .registers 4
    .parameter "updateInputWindows"

    .prologue
    .line 9134
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 9135
    return-void
.end method

.method static fixScale(F)F
    .registers 2
    .parameter "scale"

    .prologue
    .line 4647
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_b

    const/4 p0, 0x0

    .line 4649
    :cond_6
    :goto_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 4648
    :cond_b
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    const/high16 p0, 0x41a0

    goto :goto_6
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .parameter "lp"

    .prologue
    .line 2901
    if-eqz p1, :cond_25

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_25

    .line 2905
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2906
    .local v0, packageName:Ljava/lang/String;
    :goto_c
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2907
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_17

    .line 2908
    const-string v0, "android"

    .line 2912
    :cond_17
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2915
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_21
    return-object v2

    .line 2905
    :cond_22
    const-string v0, "android"

    goto :goto_c

    .line 2915
    :cond_25
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 5
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2921
    if-eqz p1, :cond_16

    .line 2922
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_b

    .line 2923
    const-string p1, "android"

    .line 2927
    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 2930
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .prologue
    .line 6437
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6438
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 6439
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 2

    .prologue
    .line 6443
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 8
    .parameter "tokens"
    .parameter "index"
    .parameter "defUnits"
    .parameter "defDps"
    .parameter "dm"

    .prologue
    .line 9321
    array-length v2, p0

    if-ge p1, v2, :cond_13

    .line 9322
    aget-object v0, p0, p1

    .line 9323
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 9325
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    move-result v1

    .line 9335
    .end local v0           #str:Ljava/lang/String;
    :goto_11
    return v1

    .line 9327
    .restart local v0       #str:Ljava/lang/String;
    :catch_12
    move-exception v2

    .line 9331
    .end local v0           #str:Ljava/lang/String;
    :cond_13
    if-nez p2, :cond_17

    move v1, p3

    .line 9332
    goto :goto_11

    .line 9334
    :cond_17
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 9335
    .local v1, val:I
    goto :goto_11
.end method

.method private isSystemSecure()Z
    .registers 4

    .prologue
    .line 5552
    const-string v0, "1"

    const-string v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "0"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 3004
    const/4 v0, 0x0

    .line 3005
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3006
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 3007
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 3008
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 3009
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 3010
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3013
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_14
    if-eqz v0, :cond_1b

    .line 3014
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 3016
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 3020
    const/4 v0, 0x0

    .line 3021
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3022
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_e

    .line 3023
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 3024
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_e

    .line 3025
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 3026
    move v0, p2

    .line 3029
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_e
    if-eqz v0, :cond_15

    .line 3030
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 3032
    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 6
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    .line 2397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2399
    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_3d

    .line 2400
    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2404
    :goto_3c
    return-void

    .line 2402
    :cond_3d
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;
    .registers 6
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "allowBootMsgs"

    .prologue
    .line 658
    new-instance v0, Lcom/android/server/wm/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V

    .line 659
    .local v0, thr:Lcom/android/server/wm/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$WMThread;->start()V

    .line 661
    monitor-enter v0

    .line 662
    :goto_9
    :try_start_9
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_17

    if-nez v1, :cond_13

    .line 664
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_9

    .line 665
    :catch_11
    move-exception v1

    goto :goto_9

    .line 668
    :cond_13
    :try_start_13
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-exit v0

    return-object v1

    .line 669
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V
    .registers 7
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    const/4 v2, 0x0

    .line 4410
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    .line 4413
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .line 4416
    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v0

    .line 4418
    if-eqz p3, :cond_28

    .line 4419
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4420
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 4422
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 4424
    :cond_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4425
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4426
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4428
    :cond_28
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .registers 10
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v6, 0x0

    .line 4432
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4434
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_1c

    .line 4435
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4436
    .local v3, token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_19

    .line 4437
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    .line 4434
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4442
    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 4445
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_38

    .line 4446
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4447
    .restart local v3       #token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_35

    .line 4448
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 4445
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 4452
    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_38
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4453
    const/4 v4, 0x3

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v4

    if-nez v4, :cond_47

    .line 4455
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 4457
    :cond_47
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4458
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4459
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4462
    return-void
.end method

.method private notifyFocusChanged()V
    .registers 6

    .prologue
    .line 5823
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5824
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5825
    monitor-exit v4

    .line 5834
    :cond_c
    return-void

    .line 5827
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5828
    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5829
    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 5830
    array-length v0, v2

    .line 5831
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_c

    .line 5832
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 5831
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 5829
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method private notifyWindowsChanged()V
    .registers 6

    .prologue
    .line 5808
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5809
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5810
    monitor-exit v4

    .line 5819
    :cond_c
    return-void

    .line 5812
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5813
    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5814
    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 5815
    array-length v0, v2

    .line 5816
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_c

    .line 5817
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 5816
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 5814
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 7323
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-eqz v7, :cond_e

    .line 7327
    const-string v7, "WindowManager"

    const-string v8, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7403
    :cond_d
    :goto_d
    return-void

    .line 7331
    :cond_e
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v7, :cond_d

    .line 7338
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_d

    .line 7343
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7344
    const/4 v3, 0x0

    .line 7347
    .local v3, recoveringMemory:Z
    :try_start_19
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_65

    .line 7348
    const/4 v3, 0x1

    .line 7350
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4f

    .line 7351
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 7352
    .local v6, ws:Lcom/android/server/wm/WindowState;
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7353
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 7350
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 7355
    .end local v6           #ws:Lcom/android/server/wm/WindowState;
    :cond_4f
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 7356
    const-string v7, "WindowManager"

    const-string v8, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7357
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 7358
    .local v4, tmp:Ljava/lang/Object;
    monitor-enter v4
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_5f} :catch_99

    .line 7360
    const-wide/16 v7, 0xfa

    :try_start_61
    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_96
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_e9

    .line 7363
    :goto_64
    :try_start_64
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_96

    .line 7370
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :cond_65
    :goto_65
    :try_start_65
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 7372
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7373
    .local v0, N:I
    if-lez v0, :cond_dc

    .line 7374
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v7, v7

    if-ge v7, v0, :cond_7b

    .line 7375
    add-int/lit8 v7, v0, 0xa

    new-array v7, v7, [Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 7377
    :cond_7b
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7378
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 7379
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_88
    if-ge v2, v0, :cond_a2

    .line 7380
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v5, v7, v2

    .line 7381
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_93} :catch_d0

    .line 7379
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 7363
    .end local v0           #N:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    .restart local v4       #tmp:Ljava/lang/Object;
    :catchall_96
    move-exception v7

    :try_start_97
    monitor-exit v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    :try_start_98
    throw v7
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_99} :catch_99

    .line 7365
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :catch_99
    move-exception v1

    .line 7366
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while force removing for memory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 7384
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_a2
    const/4 v7, 0x0

    :try_start_a3
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7385
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7386
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7387
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 7395
    .end local v2           #i:I
    :cond_ae
    :goto_ae
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 7396
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7397
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_ce
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_ce} :catch_d0

    goto/16 :goto_d

    .line 7399
    .end local v0           #N:I
    :catch_d0
    move-exception v1

    .line 7400
    .restart local v1       #e:Ljava/lang/RuntimeException;
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7401
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while laying out windows"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 7390
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    :cond_dc
    const/4 v7, 0x0

    :try_start_dd
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7391
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v7, :cond_ae

    .line 7392
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_e8
    .catch Ljava/lang/RuntimeException; {:try_start_dd .. :try_end_e8} :catch_d0

    goto :goto_ae

    .line 7361
    .end local v0           #N:I
    .restart local v2       #i:I
    .restart local v4       #tmp:Ljava/lang/Object;
    :catch_e9
    move-exception v7

    goto/16 :goto_64
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .registers 96
    .parameter "recoveringMemory"

    .prologue
    .line 7556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v5, :cond_e

    .line 7557
    const-string v5, "WindowManager"

    const-string v8, "skipping performLayoutAndPlaceSurfacesLockedInner with no mDisplay"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8888
    :goto_d
    return-void

    .line 7561
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    .line 7562
    .local v42, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move/from16 v48, v0

    .line 7563
    .local v48, dw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v44, v0

    .line 7564
    .local v44, dh:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v59, v0

    .line 7565
    .local v59, innerDw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v58, v0

    .line 7569
    .local v58, innerDh:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v5, :cond_3c

    .line 7570
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7571
    const/4 v5, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 7576
    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    .local v57, i:I
    :goto_46
    if-ltz v57, :cond_5a

    .line 7577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 7576
    add-int/lit8 v57, v57, -0x1

    goto :goto_46

    .line 7581
    :cond_5a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_64
    if-ltz v57, :cond_78

    .line 7582
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 7581
    add-int/lit8 v57, v57, -0x1

    goto :goto_64

    .line 7585
    :cond_78
    const/16 v69, 0x1

    .line 7586
    .local v69, orientationChangeComplete:Z
    const/16 v56, 0x0

    .line 7587
    .local v56, holdScreen:Lcom/android/server/wm/Session;
    const/high16 v72, -0x4080

    .line 7588
    .local v72, screenBrightness:F
    const/high16 v35, -0x4080

    .line 7589
    .local v35, buttonBrightness:F
    const/16 v50, 0x0

    .line 7590
    .local v50, focusDisplayed:Z
    const/16 v29, 0x0

    .line 7591
    .local v29, animating:Z
    const/16 v41, 0x0

    .line 7592
    .local v41, createWatermark:Z
    const/16 v82, 0x0

    .line 7593
    .local v82, updateRotation:Z
    const/16 v73, 0x0

    .line 7595
    .local v73, screenRotationFinished:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    if-nez v5, :cond_9b

    .line 7596
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 7597
    const/16 v41, 0x1

    .line 7603
    :cond_9b
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 7605
    if-eqz v41, :cond_a3

    .line 7606
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->createWatermark()V

    .line 7608
    :cond_a3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_b4

    .line 7609
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 7611
    :cond_b4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v5, :cond_c5

    .line 7612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 7616
    :cond_c5
    const/16 v85, 0x0

    .line 7617
    .local v85, wallpaperForceHidingChanged:Z
    const/16 v71, 0x0

    .line 7618
    .local v71, repeats:I
    const/16 v38, 0x0

    .line 7621
    .local v38, changes:I
    :cond_cb
    add-int/lit8 v71, v71, 0x1

    .line 7622
    const/4 v5, 0x6

    move/from16 v0, v71

    if-le v0, v5, :cond_3c0

    .line 7623
    :try_start_d2
    const-string v5, "WindowManager"

    const-string v8, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7624
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 8287
    :goto_de
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_c45

    const/16 v74, 0x1

    .line 8289
    .local v74, someoneLosingFocus:Z
    :goto_ea
    const/16 v65, 0x0

    .line 8290
    .local v65, obscured:Z
    const/16 v34, 0x0

    .line 8291
    .local v34, blurring:Z
    const/16 v46, 0x0

    .line 8292
    .local v46, dimming:Z
    const/16 v40, 0x0

    .line 8293
    .local v40, covered:Z
    const/16 v76, 0x0

    .line 8295
    .local v76, syswin:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 8297
    .local v19, N:I
    add-int/lit8 v57, v19, -0x1

    :goto_fe
    if-ltz v57, :cond_f90

    .line 8298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8300
    .local v83, w:Lcom/android/server/wm/WindowState;
    const/16 v47, 0x0

    .line 8301
    .local v47, displayed:Z
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 8302
    .local v32, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    .line 8304
    .local v31, attrFlags:I
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_eac

    .line 8319
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    .line 8324
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_1ce

    .line 8326
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_c49

    .line 8329
    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v88, v0

    .line 8330
    .local v88, width:I
    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v55, v0

    .line 8336
    .local v55, height:I
    :goto_143
    const/4 v5, 0x1

    move/from16 v0, v88

    if-ge v0, v5, :cond_14a

    .line 8337
    const/16 v88, 0x1

    .line 8339
    :cond_14a
    const/4 v5, 0x1

    move/from16 v0, v55

    if-ge v0, v5, :cond_151

    .line 8340
    const/16 v55, 0x1

    .line 8342
    :cond_151
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    move/from16 v0, v88

    int-to-float v8, v0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_167

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    move/from16 v0, v55

    int-to-float v8, v0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_c5b

    :cond_167
    const/16 v75, 0x1

    .line 8343
    .local v75, surfaceResized:Z
    :goto_169
    if-eqz v75, :cond_179

    .line 8344
    move/from16 v0, v88

    int-to-float v5, v0

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    .line 8345
    move/from16 v0, v55

    int-to-float v5, v0

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    .line 8348
    :cond_179
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_195

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F
    :try_end_191
    .catch Ljava/lang/RuntimeException; {:try_start_d2 .. :try_end_191} :catch_701

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1bc

    .line 8354
    :cond_195
    :try_start_195
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    .line 8355
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    .line 8356
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v8, v10}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_195 .. :try_end_1bc} :catch_c5f

    .line 8367
    :cond_1bc
    :goto_1bc
    if-eqz v75, :cond_1ce

    .line 8371
    const/4 v5, 0x1

    :try_start_1bf
    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    .line 8372
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move/from16 v0, v88

    move/from16 v1, v55

    invoke-virtual {v5, v0, v1}, Landroid/view/Surface;->setSize(II)V
    :try_end_1ce
    .catch Ljava/lang/RuntimeException; {:try_start_1bf .. :try_end_1ce} :catch_cb0

    .line 8386
    .end local v55           #height:I
    .end local v75           #surfaceResized:Z
    .end local v88           #width:I
    :cond_1ce
    :goto_1ce
    :try_start_1ce
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_2a1

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    if-ne v5, v8, :cond_2a1

    .line 8387
    move-object/from16 v0, v83

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf9

    const/4 v5, 0x1

    :goto_1f1
    or-int/2addr v5, v8

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 8389
    move-object/from16 v0, v83

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cfc

    const/4 v5, 0x1

    :goto_209
    or-int/2addr v5, v8

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 8391
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v5, v8, :cond_cff

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_22c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_cff

    :cond_22c
    const/16 v39, 0x1

    .line 8402
    .local v39, configChanged:Z
    :goto_22e
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8403
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v5, :cond_24d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v5, :cond_24d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    if-nez v5, :cond_24d

    if-eqz v39, :cond_d03

    .line 8415
    :cond_24d
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8416
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8417
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 8423
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_28c

    .line 8427
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    .line 8428
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    .line 8429
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    .line 8430
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_28c

    .line 8431
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 8434
    :cond_28c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a1

    .line 8438
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8450
    .end local v39           #configChanged:Z
    :cond_2a1
    :goto_2a1
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v5, :cond_2ad

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_d39

    .line 8451
    :cond_2ad
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-nez v5, :cond_2ca

    .line 8453
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 8456
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_2ca

    .line 8457
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z
    :try_end_2c3
    .catch Ljava/lang/RuntimeException; {:try_start_1ce .. :try_end_2c3} :catch_701

    .line 8459
    :try_start_2c3
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_2ca
    .catch Ljava/lang/RuntimeException; {:try_start_2c3 .. :try_end_2ca} :catch_d1c

    .line 8471
    :cond_2ca
    :goto_2ca
    :try_start_2ca
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_2d5

    .line 8472
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8538
    :cond_2d5
    :goto_2d5
    if-eqz v47, :cond_304

    .line 8539
    if-nez v40, :cond_2e9

    .line 8540
    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2e9

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2e9

    .line 8542
    const/16 v40, 0x1

    .line 8545
    :cond_2e9
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_2fd

    .line 8546
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_2fb

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v5, :cond_ea5

    .line 8547
    :cond_2fb
    const/16 v69, 0x0

    .line 8556
    :cond_2fd
    :goto_2fd
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 8564
    :cond_304
    :goto_304
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v5, :cond_30f

    .line 8566
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 8569
    :cond_30f
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v36

    .line 8571
    .local v36, canBeSeen:Z
    if-eqz v74, :cond_321

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v0, v5, :cond_321

    if-eqz v36, :cond_321

    .line 8572
    const/16 v50, 0x1

    .line 8575
    :cond_321
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move/from16 v0, v65

    if-eq v5, v0, :cond_eb9

    const/16 v66, 0x1

    .line 8578
    .local v66, obscuredChanged:Z
    :goto_32b
    move/from16 v0, v65

    move-object/from16 v1, v83

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v65, :cond_3af

    .line 8579
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_395

    .line 8580
    move/from16 v0, v31

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_345

    .line 8581
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v56, v0

    .line 8583
    :cond_345
    if-nez v76, :cond_35f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_35f

    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-gez v5, :cond_35f

    .line 8585
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v72, v0

    .line 8587
    :cond_35f
    if-nez v76, :cond_379

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_379

    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-gez v5, :cond_379

    .line 8589
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v35, v0

    .line 8591
    :cond_379
    if-eqz v36, :cond_395

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d8

    if-eq v5, v8, :cond_393

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-eq v5, v8, :cond_393

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7da

    if-ne v5, v8, :cond_395

    .line 8595
    :cond_393
    const/16 v76, 0x1

    .line 8599
    :cond_395
    if-eqz v36, :cond_ebd

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_ebd

    const/16 v68, 0x1

    .line 8600
    .local v68, opaqueDrawn:Z
    :goto_39f
    if-eqz v68, :cond_ec1

    move-object/from16 v0, v83

    move/from16 v1, v59

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_ec1

    .line 8604
    const/16 v65, 0x1

    .line 8667
    .end local v68           #opaqueDrawn:Z
    :cond_3af
    :goto_3af
    if-eqz v66, :cond_3bc

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v5, v0, :cond_3bc

    .line 8671
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperVisibilityLocked()V

    .line 8297
    :cond_3bc
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_fe

    .line 7628
    .end local v19           #N:I
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v34           #blurring:Z
    .end local v36           #canBeSeen:Z
    .end local v40           #covered:Z
    .end local v46           #dimming:Z
    .end local v47           #displayed:Z
    .end local v65           #obscured:Z
    .end local v66           #obscuredChanged:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v76           #syswin:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_3c0
    and-int/lit8 v5, v38, 0x7

    if-eqz v5, :cond_3fc

    .line 7631
    and-int/lit8 v5, v38, 0x4

    if-eqz v5, :cond_3d8

    .line 7632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3d8

    .line 7633
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7634
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7637
    :cond_3d8
    and-int/lit8 v5, v38, 0x2

    if-eqz v5, :cond_3f3

    .line 7639
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v5

    if-eqz v5, :cond_3f3

    .line 7640
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7641
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 7644
    :cond_3f3
    and-int/lit8 v5, v38, 0x1

    if-eqz v5, :cond_3fc

    .line 7645
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7650
    :cond_3fc
    const/4 v5, 0x4

    move/from16 v0, v71

    if-ge v0, v5, :cond_413

    .line 7651
    if-nez v71, :cond_411

    const/4 v5, 0x1

    :goto_404
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    move-result v38

    .line 7652
    if-eqz v38, :cond_41c

    .line 8283
    :cond_40d
    :goto_40d
    if-nez v38, :cond_cb

    goto/16 :goto_de

    .line 7651
    :cond_411
    const/4 v5, 0x0

    goto :goto_404

    .line 7656
    :cond_413
    const-string v5, "WindowManager"

    const-string v8, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7657
    const/16 v38, 0x0

    .line 7660
    :cond_41c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    add-int/lit8 v81, v5, 0x1

    move/from16 v0, v81

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 7664
    .local v81, transactionSequence:I
    const/16 v80, 0x0

    .line 7665
    .local v80, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 7666
    .local v20, NAT:I
    const/16 v57, 0x0

    :goto_434
    move/from16 v0, v57

    move/from16 v1, v20

    if-ge v0, v1, :cond_457

    .line 7667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-wide/from16 v0, v42

    move/from16 v2, v59

    move/from16 v3, v58

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_454

    .line 7669
    const/16 v80, 0x1

    .line 7666
    :cond_454
    add-int/lit8 v57, v57, 0x1

    goto :goto_434

    .line 7672
    :cond_457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 7673
    .local v22, NEAT:I
    const/16 v57, 0x0

    :goto_461
    move/from16 v0, v57

    move/from16 v1, v22

    if-ge v0, v1, :cond_484

    .line 7674
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-wide/from16 v0, v42

    move/from16 v2, v59

    move/from16 v3, v58

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_481

    .line 7676
    const/16 v80, 0x1

    .line 7673
    :cond_481
    add-int/lit8 v57, v57, 0x1

    goto :goto_461

    .line 7686
    :cond_484
    move/from16 v29, v80

    .line 7688
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_4a4

    .line 7689
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_4a4

    .line 7690
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v5

    if-eqz v5, :cond_689

    .line 7691
    const/16 v29, 0x1

    .line 7699
    :cond_4a4
    :goto_4a4
    const/16 v79, 0x0

    .line 7700
    .local v79, tokenMayBeDrawn:Z
    const/16 v86, 0x0

    .line 7701
    .local v86, wallpaperMayChange:Z
    const/16 v51, 0x0

    .line 7702
    .local v51, forceHiding:Z
    const/16 v92, 0x0

    .line 7703
    .local v92, windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    const/16 v90, 0x0

    .line 7704
    .local v90, windowAnimationBackground:Lcom/android/server/wm/WindowState;
    const/16 v91, 0x0

    .line 7706
    .local v91, windowAnimationBackgroundColor:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 7708
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 7710
    .restart local v19       #N:I
    add-int/lit8 v57, v19, -0x1

    :goto_4c5
    if-ltz v57, :cond_848

    .line 7711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 7713
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 7715
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_60a

    .line 7717
    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_4f6

    .line 7718
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_4f6

    .line 7722
    const/16 v86, 0x1

    .line 7726
    :cond_4f6
    move-object/from16 v0, v83

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    move/from16 v87, v0

    .line 7728
    .local v87, wasAnimating:Z
    move/from16 v28, v59

    .line 7729
    .local v28, animDw:I
    move/from16 v27, v58

    .line 7735
    .local v27, animDh:I
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v5

    if-eqz v5, :cond_534

    .line 7739
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10a0052

    invoke-static {v5, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v25

    .line 7741
    .local v25, a:Landroid/view/animation/Animation;
    move-object/from16 v0, v83

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7742
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v28, v5, v8

    .line 7743
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v27, v5, v8

    .line 7747
    .end local v25           #a:Landroid/view/animation/Animation;
    :cond_534
    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    move/from16 v3, v28

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowState;->stepAnimationLocked(JII)Z

    move-result v63

    .line 7753
    .local v63, nowAnimating:Z
    if-eqz v63, :cond_581

    .line 7754
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_57f

    .line 7755
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_55f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_55f

    .line 7757
    move-object/from16 v92, v83

    .line 7759
    :cond_55f
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_57f

    .line 7760
    if-eqz v90, :cond_575

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v90

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ge v5, v8, :cond_57f

    .line 7762
    :cond_575
    move-object/from16 v90, v83

    .line 7763
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v91

    .line 7768
    :cond_57f
    const/16 v29, 0x1

    .line 7774
    :cond_581
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_5d4

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_5d4

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-eqz v5, :cond_5d4

    .line 7776
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_5b0

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_5b0

    .line 7778
    move-object/from16 v92, v83

    .line 7780
    :cond_5b0
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_5d4

    .line 7781
    if-eqz v90, :cond_5c8

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v90

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ge v5, v8, :cond_5d4

    .line 7783
    :cond_5c8
    move-object/from16 v90, v83

    .line 7784
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v91

    .line 7790
    :cond_5d4
    if-eqz v87, :cond_5e6

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v5, :cond_5e6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v5, v0, :cond_5e6

    .line 7791
    const/16 v86, 0x1

    .line 7794
    :cond_5e6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_69f

    .line 7795
    if-nez v87, :cond_68f

    if-eqz v63, :cond_68f

    .line 7799
    const/16 v85, 0x1

    .line 7800
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7841
    :cond_5ff
    :goto_5ff
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 7844
    .end local v27           #animDh:I
    .end local v28           #animDw:I
    .end local v63           #nowAnimating:Z
    .end local v87           #wasAnimating:Z
    :cond_60a
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    .line 7845
    .local v30, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v30, :cond_83d

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_61e

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_83d

    .line 7846
    :cond_61e
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    move/from16 v0, v81

    if-eq v5, v0, :cond_63a

    .line 7847
    move/from16 v0, v81

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    .line 7848
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 7849
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 7851
    :cond_63a
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_649

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_685

    :cond_649
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v5, :cond_685

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v5, :cond_685

    .line 7868
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-eq v0, v5, :cond_830

    .line 7869
    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_669

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_685

    .line 7870
    :cond_669
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 7871
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_685

    .line 7872
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 7877
    const/16 v79, 0x1

    .line 7710
    :cond_685
    :goto_685
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_4c5

    .line 7693
    .end local v19           #N:I
    .end local v30           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v51           #forceHiding:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    .end local v86           #wallpaperMayChange:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_689
    const/16 v73, 0x1

    .line 7694
    const/16 v82, 0x1

    goto/16 :goto_4a4

    .line 7801
    .restart local v19       #N:I
    .restart local v27       #animDh:I
    .restart local v28       #animDw:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v51       #forceHiding:Z
    .restart local v63       #nowAnimating:Z
    .restart local v79       #tokenMayBeDrawn:Z
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    .restart local v86       #wallpaperMayChange:Z
    .restart local v87       #wasAnimating:Z
    .restart local v90       #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .restart local v91       #windowAnimationBackgroundColor:I
    .restart local v92       #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_68f
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_5ff

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_5ff

    .line 7802
    const/16 v51, 0x1

    goto/16 :goto_5ff

    .line 7804
    :cond_69f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_5ff

    .line 7806
    if-eqz v51, :cond_6c6

    .line 7807
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v37

    .line 7835
    .local v37, changed:Z
    :cond_6b7
    :goto_6b7
    if-eqz v37, :cond_5ff

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_5ff

    .line 7837
    const/16 v86, 0x1

    goto/16 :goto_5ff

    .line 7811
    .end local v37           #changed:Z
    :cond_6c6
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v37

    .line 7814
    .restart local v37       #changed:Z
    if-eqz v37, :cond_6b7

    .line 7815
    if-eqz v85, :cond_6e9

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_6e9

    .line 7821
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v25

    .line 7822
    .restart local v25       #a:Landroid/view/animation/Animation;
    if-eqz v25, :cond_6e9

    .line 7823
    move-object/from16 v0, v83

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7826
    .end local v25           #a:Landroid/view/animation/Animation;
    :cond_6e9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_6fb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v5, v8, :cond_6b7

    .line 7831
    :cond_6fb
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z
    :try_end_700
    .catch Ljava/lang/RuntimeException; {:try_start_2ca .. :try_end_700} :catch_701

    goto :goto_6b7

    .line 8699
    .end local v19           #N:I
    .end local v20           #NAT:I
    .end local v22           #NEAT:I
    .end local v27           #animDh:I
    .end local v28           #animDw:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v37           #changed:Z
    .end local v51           #forceHiding:Z
    .end local v63           #nowAnimating:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v80           #tokensAnimating:Z
    .end local v81           #transactionSequence:I
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    .end local v86           #wallpaperMayChange:Z
    .end local v87           #wasAnimating:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :catch_701
    move-exception v49

    .line 8700
    .local v49, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v8, "Unhandled exception in Window Manager"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8703
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_70b
    :goto_70b
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 8708
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_71b

    .line 8709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v5}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V

    .line 8715
    :cond_71b
    if-eqz v69, :cond_734

    .line 8716
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-eqz v5, :cond_731

    .line 8717
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 8718
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8720
    :cond_731
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 8723
    :cond_734
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v57

    .line 8724
    if-lez v57, :cond_7b3

    .line 8726
    :cond_73e
    add-int/lit8 v57, v57, -0x1

    .line 8727
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/wm/WindowState;

    .line 8731
    .local v89, win:Lcom/android/server/wm/WindowState;
    const/16 v45, 0x0

    .line 8732
    .local v45, diff:I
    :try_start_74e
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v5, v8, :cond_100c

    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_76c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v45

    if-eqz v45, :cond_100c

    :cond_76c
    const/16 v39, 0x1

    .line 8743
    .restart local v39       #configChanged:Z
    :goto_76e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iput-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 8746
    move-object/from16 v0, v89

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, v89

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    float-to-int v11, v5

    move-object/from16 v0, v89

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    float-to-int v12, v5

    move-object/from16 v0, v89

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v89

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v89

    iget-boolean v15, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-eqz v39, :cond_1010

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    :goto_798
    invoke-interface/range {v10 .. v16}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 8749
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 8750
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 8751
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z
    :try_end_7aa
    .catch Landroid/os/RemoteException; {:try_start_74e .. :try_end_7aa} :catch_1014

    .line 8755
    .end local v39           #configChanged:Z
    :goto_7aa
    if-gtz v57, :cond_73e

    .line 8756
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8760
    .end local v45           #diff:I
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    :cond_7b3
    const/16 v84, 0x0

    .line 8761
    .local v84, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v57

    .line 8762
    if-lez v57, :cond_7f5

    .line 8764
    :cond_7bf
    add-int/lit8 v57, v57, -0x1

    .line 8765
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/wm/WindowState;

    .line 8766
    .restart local v89       #win:Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 8767
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v89

    if-ne v5, v0, :cond_7df

    .line 8768
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 8770
    :cond_7df
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v89

    if-ne v0, v5, :cond_7e9

    .line 8771
    const/16 v84, 0x1

    .line 8773
    :cond_7e9
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    .line 8774
    if-gtz v57, :cond_7bf

    .line 8775
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8779
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    :cond_7f5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_7ff
    if-ltz v57, :cond_101c

    .line 8780
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/android/server/wm/WindowToken;

    .line 8781
    .local v78, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v78

    iget-boolean v5, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v5, :cond_82d

    .line 8782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8783
    move-object/from16 v0, v78

    iget v5, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7dd

    if-ne v5, v8, :cond_82d

    .line 8784
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8779
    :cond_82d
    add-int/lit8 v57, v57, -0x1

    goto :goto_7ff

    .line 7880
    .end local v78           #token:Lcom/android/server/wm/WindowToken;
    .end local v84           #wallpaperDestroyed:Z
    .restart local v19       #N:I
    .restart local v20       #NAT:I
    .restart local v22       #NEAT:I
    .restart local v30       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v51       #forceHiding:Z
    .restart local v79       #tokenMayBeDrawn:Z
    .restart local v80       #tokensAnimating:Z
    .restart local v81       #transactionSequence:I
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    .restart local v86       #wallpaperMayChange:Z
    .restart local v90       #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .restart local v91       #windowAnimationBackgroundColor:I
    .restart local v92       #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_830
    :try_start_830
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_685

    .line 7881
    const/4 v5, 0x1

    move-object/from16 v0, v30

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_685

    .line 7884
    :cond_83d
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-eqz v5, :cond_685

    .line 7885
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    goto/16 :goto_685

    .line 7889
    .end local v30           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_848
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v38, v38, v5

    .line 7891
    if-eqz v79, :cond_8b2

    .line 7894
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 7895
    .local v24, NT:I
    const/16 v57, 0x0

    :goto_85e
    move/from16 v0, v57

    move/from16 v1, v24

    if-ge v0, v1, :cond_8b2

    .line 7896
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7897
    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_88f

    .line 7898
    iget v0, v6, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v64, v0

    .line 7899
    .local v64, numInteresting:I
    if-lez v64, :cond_88c

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move/from16 v0, v64

    if-lt v5, v0, :cond_88c

    .line 7904
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 7905
    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 7910
    const/16 v69, 0x1

    .line 7895
    .end local v64           #numInteresting:I
    :cond_88c
    :goto_88c
    add-int/lit8 v57, v57, 0x1

    goto :goto_85e

    .line 7912
    :cond_88f
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_88c

    .line 7913
    iget v0, v6, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v64, v0

    .line 7914
    .restart local v64       #numInteresting:I
    if-lez v64, :cond_88c

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move/from16 v0, v64

    if-lt v5, v0, :cond_88c

    .line 7919
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 7920
    or-int/lit8 v38, v38, 0x8

    .line 7923
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88c

    .line 7924
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    goto :goto_88c

    .line 7934
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v24           #NT:I
    .end local v64           #numInteresting:I
    :cond_8b2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-eqz v5, :cond_ac9

    .line 7935
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7936
    .local v23, NN:I
    const/16 v54, 0x1

    .line 7941
    .local v54, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_8f5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    if-nez v5, :cond_8f5

    .line 7945
    const/16 v57, 0x0

    :goto_8d0
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_8f5

    if-eqz v54, :cond_8f5

    .line 7946
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7951
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_8f2

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_8f2

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_8f2

    .line 7953
    const/16 v54, 0x0

    .line 7945
    :cond_8f2
    add-int/lit8 v57, v57, 0x1

    goto :goto_8d0

    .line 7957
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_8f5
    if-eqz v54, :cond_ac9

    .line 7959
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 7960
    .local v9, transit:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v5, :cond_902

    .line 7961
    const/4 v9, -0x1

    .line 7963
    :cond_902
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 7964
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 7965
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 7966
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 7967
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 7968
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 7970
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7977
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_968

    .line 7978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7979
    const/16 v57, 0x0

    :goto_93d
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_961

    .line 7980
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7981
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->sendingToTop:Z

    if-eqz v5, :cond_95e

    .line 7982
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->sendingToTop:Z

    .line 7983
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V

    .line 7979
    :cond_95e
    add-int/lit8 v57, v57, 0x1

    goto :goto_93d

    .line 7986
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_961
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7989
    :cond_968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v67, v0

    .line 7991
    .local v67, oldWallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 7992
    const/16 v86, 0x0

    .line 7996
    const/4 v7, 0x0

    .line 7997
    .local v7, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v33, -0x1

    .line 7998
    .local v33, bestAnimLayer:I
    const/16 v53, 0x0

    .line 8004
    .local v53, fullscreenAnim:Z
    const/16 v52, 0x0

    .line 8015
    .local v52, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 8016
    .local v21, NC:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v23, v21, v5

    .line 8017
    const/16 v57, 0x0

    :goto_98e
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_a03

    .line 8020
    move/from16 v0, v57

    move/from16 v1, v21

    if-ge v0, v1, :cond_9d9

    .line 8021
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8022
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v61, 0x1

    .line 8027
    .local v61, mode:I
    :goto_9a8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_9c0

    .line 8028
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_9be

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, v6, :cond_9c0

    .line 8030
    :cond_9be
    or-int v52, v52, v61

    .line 8033
    :cond_9c0
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_9e8

    .line 8034
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v93

    .line 8035
    .local v93, ws:Lcom/android/server/wm/WindowState;
    if-eqz v93, :cond_9d6

    .line 8036
    move-object/from16 v0, v93

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8037
    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    .line 8038
    const/16 v53, 0x1

    .line 8017
    .end local v93           #ws:Lcom/android/server/wm/WindowState;
    :cond_9d6
    :goto_9d6
    add-int/lit8 v57, v57, 0x1

    goto :goto_98e

    .line 8024
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v61           #mode:I
    :cond_9d9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    sub-int v8, v57, v21

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8025
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v61, 0x2

    .restart local v61       #mode:I
    goto :goto_9a8

    .line 8040
    :cond_9e8
    if-nez v53, :cond_9d6

    .line 8041
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v93

    .line 8042
    .restart local v93       #ws:Lcom/android/server/wm/WindowState;
    if-eqz v93, :cond_9d6

    .line 8043
    move-object/from16 v0, v93

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v33

    if-le v5, v0, :cond_9d6

    .line 8044
    move-object/from16 v0, v93

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8045
    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    goto :goto_9d6

    .line 8051
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v61           #mode:I
    .end local v93           #ws:Lcom/android/server/wm/WindowState;
    :cond_a03
    const/4 v5, 0x3

    move/from16 v0, v52

    if-ne v0, v5, :cond_a54

    .line 8054
    sparse-switch v9, :sswitch_data_1196

    .line 8086
    :cond_a0b
    :goto_a0b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_a16

    .line 8087
    const/4 v7, 0x0

    .line 8090
    :cond_a16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 8091
    const/16 v57, 0x0

    :goto_a20
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_a62

    .line 8092
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8095
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 8096
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 8097
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8098
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8100
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8101
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 8102
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 8091
    add-int/lit8 v57, v57, 0x1

    goto :goto_a20

    .line 8058
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_a4e
    const/16 v9, 0x100e

    .line 8059
    goto :goto_a0b

    .line 8063
    :sswitch_a51
    const/16 v9, 0x200f

    goto :goto_a0b

    .line 8068
    :cond_a54
    if-eqz v67, :cond_a59

    .line 8071
    const/16 v9, 0x200c

    goto :goto_a0b

    .line 8074
    :cond_a59
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_a0b

    .line 8077
    const/16 v9, 0x100d

    goto :goto_a0b

    .line 8104
    :cond_a62
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 8105
    const/16 v57, 0x0

    :goto_a6c
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_a97

    .line 8106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8109
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 8110
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8111
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8113
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8114
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    .line 8118
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 8105
    add-int/lit8 v57, v57, 0x1

    goto :goto_a6c

    .line 8121
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_a97
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 8123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8128
    or-int/lit8 v38, v38, 0x3

    .line 8130
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 8131
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_abd

    .line 8132
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8134
    :cond_abd
    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 8136
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8140
    .end local v7           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #transit:I
    .end local v21           #NC:I
    .end local v23           #NN:I
    .end local v33           #bestAnimLayer:I
    .end local v52           #foundWallpapers:I
    .end local v53           #fullscreenAnim:Z
    .end local v54           #goodToGo:Z
    .end local v67           #oldWallpaper:Lcom/android/server/wm/WindowState;
    :cond_ac9
    const/16 v26, 0x0

    .line 8142
    .local v26, adjResult:I
    if-nez v29, :cond_af3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v5, :cond_af3

    .line 8149
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 8151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8153
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 8154
    or-int/lit8 v38, v38, 0x1

    .line 8155
    or-int/lit8 v26, v26, 0x2

    .line 8156
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 8157
    const/16 v86, 0x1

    .line 8161
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8164
    :cond_af3
    if-eqz v85, :cond_b85

    if-nez v38, :cond_b85

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-nez v5, :cond_b85

    .line 8171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v67, v0

    .line 8172
    .restart local v67       #oldWallpaper:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_b26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_b26

    .line 8180
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v5, :cond_b26

    .line 8184
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 8185
    or-int/lit8 v38, v38, 0x8

    .line 8188
    :cond_b26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    .line 8189
    const/16 v86, 0x0

    .line 8190
    const/16 v85, 0x0

    .line 8194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_b85

    .line 8197
    const/16 v51, 0x0

    .line 8198
    add-int/lit8 v57, v19, -0x1

    :goto_b3a
    if-ltz v57, :cond_b85

    .line 8199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8200
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_b6a

    .line 8201
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 8202
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_b6d

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_b6d

    .line 8204
    const/16 v51, 0x1

    .line 8198
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_b6a
    :goto_b6a
    add-int/lit8 v57, v57, -0x1

    goto :goto_b3a

    .line 8205
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_b6d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_b6a

    .line 8206
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v5, :cond_b6a

    .line 8209
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_b6a

    .line 8217
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v67           #oldWallpaper:Lcom/android/server/wm/WindowState;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_b85
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v92

    if-eq v5, v0, :cond_b95

    .line 8221
    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 8222
    const/16 v86, 0x1

    .line 8225
    :cond_b95
    if-eqz v91, :cond_c30

    .line 8229
    move-object/from16 v77, v90

    .line 8230
    .local v77, target:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-eq v5, v0, :cond_bb1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-eq v5, v0, :cond_bb1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-ne v5, v0, :cond_bd3

    .line 8233
    :cond_bb1
    const/16 v57, 0x0

    :goto_bb3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v57

    if-ge v0, v5, :cond_bd3

    .line 8234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8235
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_c2d

    .line 8236
    move-object/from16 v77, v83

    .line 8241
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_bd3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-nez v5, :cond_be6

    .line 8242
    new-instance v5, Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v8}, Lcom/android/server/wm/DimSurface;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 8244
    :cond_be6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, v77

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v8, v8, -0x1

    move/from16 v0, v48

    move/from16 v1, v44

    move/from16 v2, v91

    invoke-virtual {v5, v0, v1, v8, v2}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    .line 8251
    .end local v77           #target:Lcom/android/server/wm/WindowState;
    :cond_bf9
    :goto_bf9
    if-eqz v86, :cond_c01

    .line 8254
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    .line 8257
    :cond_c01
    and-int/lit8 v5, v26, 0x2

    if-eqz v5, :cond_c3e

    .line 8260
    or-int/lit8 v38, v38, 0x1

    .line 8261
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8268
    :cond_c0a
    :goto_c0a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v5, :cond_c23

    .line 8269
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8270
    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v5

    if-eqz v5, :cond_c23

    .line 8272
    or-int/lit8 v38, v38, 0x8

    .line 8273
    const/16 v26, 0x0

    .line 8277
    :cond_c23
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v5, :cond_40d

    .line 8278
    or-int/lit8 v38, v38, 0x1

    goto/16 :goto_40d

    .line 8233
    .restart local v77       #target:Lcom/android/server/wm/WindowState;
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    :cond_c2d
    add-int/lit8 v57, v57, 0x1

    goto :goto_bb3

    .line 8247
    .end local v77           #target:Lcom/android/server/wm/WindowState;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_c30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v5, :cond_bf9

    .line 8248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v5}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_bf9

    .line 8262
    :cond_c3e
    and-int/lit8 v5, v26, 0x4

    if-eqz v5, :cond_c0a

    .line 8265
    or-int/lit8 v38, v38, 0x1

    goto :goto_c0a

    .line 8287
    .end local v19           #N:I
    .end local v20           #NAT:I
    .end local v22           #NEAT:I
    .end local v26           #adjResult:I
    .end local v51           #forceHiding:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v80           #tokensAnimating:Z
    .end local v81           #transactionSequence:I
    .end local v86           #wallpaperMayChange:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_c45
    const/16 v74, 0x0

    goto/16 :goto_ea

    .line 8332
    .restart local v19       #N:I
    .restart local v31       #attrFlags:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v34       #blurring:Z
    .restart local v40       #covered:Z
    .restart local v46       #dimming:Z
    .restart local v47       #displayed:Z
    .restart local v65       #obscured:Z
    .restart local v74       #someoneLosingFocus:Z
    .restart local v76       #syswin:Z
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    :cond_c49
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v88

    .line 8333
    .restart local v88       #width:I
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v55

    .restart local v55       #height:I
    goto/16 :goto_143

    .line 8342
    :cond_c5b
    const/16 v75, 0x0

    goto/16 :goto_169

    .line 8357
    .restart local v75       #surfaceResized:Z
    :catch_c5f
    move-exception v49

    .line 8358
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " pos=("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8361
    if-nez p1, :cond_1bc

    .line 8362
    const-string v5, "position"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_1bc

    .line 8373
    .end local v49           #e:Ljava/lang/RuntimeException;
    :catch_cb0
    move-exception v49

    .line 8377
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error resizing surface of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " size=("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v88

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v55

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8379
    if-nez p1, :cond_1ce

    .line 8380
    const-string v5, "size"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_1ce

    .line 8387
    .end local v49           #e:Ljava/lang/RuntimeException;
    .end local v55           #height:I
    .end local v75           #surfaceResized:Z
    .end local v88           #width:I
    :cond_cf9
    const/4 v5, 0x0

    goto/16 :goto_1f1

    .line 8389
    :cond_cfc
    const/4 v5, 0x0

    goto/16 :goto_209

    .line 8391
    :cond_cff
    const/16 v39, 0x0

    goto/16 :goto_22e

    .line 8440
    .restart local v39       #configChanged:Z
    :cond_d03
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_2a1

    .line 8441
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_2a1

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v5, :cond_2a1

    .line 8445
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_2a1

    .line 8460
    .end local v39           #configChanged:Z
    :catch_d1c
    move-exception v49

    .line 8461
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception hiding surface in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ca

    .line 8476
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_d39
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ne v5, v8, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-eqz v5, :cond_ea1

    .line 8485
    :cond_d9d
    const/16 v47, 0x1

    .line 8486
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    .line 8487
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    .line 8488
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    .line 8489
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    .line 8490
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    .line 8491
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    .line 8492
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 8493
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 8500
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_de3
    .catch Ljava/lang/RuntimeException; {:try_start_830 .. :try_end_de3} :catch_701

    if-eqz v5, :cond_e36

    .line 8502
    :try_start_de5
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceAlpha:F

    .line 8503
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setAlpha(F)V

    .line 8504
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceLayer:I

    .line 8505
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    .line 8506
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move-object/from16 v0, v83

    iget v10, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v10

    move-object/from16 v0, v83

    iget v10, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move-object/from16 v0, v83

    iget v11, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    move-object/from16 v0, v83

    iget v11, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move-object/from16 v0, v83

    iget v12, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    move-object/from16 v0, v83

    iget v12, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move-object/from16 v0, v83

    iget v13, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v12, v13

    invoke-virtual {v5, v8, v10, v11, v12}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_e36
    .catch Ljava/lang/RuntimeException; {:try_start_de5 .. :try_end_e36} :catch_e71

    .line 8517
    :cond_e36
    :goto_e36
    :try_start_e36
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-eqz v5, :cond_e62

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_e62

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v5, :cond_e62

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-nez v5, :cond_e62

    .line 8524
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_e9b

    .line 8525
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    .line 8526
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 8531
    :cond_e62
    :goto_e62
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_2d5

    .line 8532
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto/16 :goto_2d5

    .line 8509
    :catch_e71
    move-exception v49

    .line 8510
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error updating surface in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8511
    if-nez p1, :cond_e36

    .line 8512
    const-string v5, "update"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto :goto_e36

    .line 8528
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_e9b
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_e62

    .line 8535
    :cond_ea1
    const/16 v47, 0x1

    goto/16 :goto_2d5

    .line 8551
    :cond_ea5
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_2fd

    .line 8558
    :cond_eac
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_304

    .line 8561
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_304

    .line 8575
    .restart local v36       #canBeSeen:Z
    :cond_eb9
    const/16 v66, 0x0

    goto/16 :goto_32b

    .line 8599
    .restart local v66       #obscuredChanged:Z
    :cond_ebd
    const/16 v68, 0x0

    goto/16 :goto_39f

    .line 8605
    .restart local v68       #opaqueDrawn:Z
    :cond_ec1
    if-eqz v36, :cond_3af

    if-nez v65, :cond_3af

    and-int/lit8 v5, v31, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3af

    .line 8611
    and-int/lit8 v5, v31, 0x2

    if-eqz v5, :cond_f0c

    .line 8612
    if-nez v46, :cond_f0c

    .line 8614
    const/16 v46, 0x1

    .line 8615
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-nez v5, :cond_ee6

    .line 8616
    new-instance v5, Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v8}, Lcom/android/server/wm/DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 8618
    :cond_ee6
    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e5

    if-ne v5, v8, :cond_f6e

    .line 8619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->show(II)V

    .line 8623
    :goto_ef9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/WindowState;J)V

    .line 8627
    :cond_f0c
    and-int/lit8 v5, v31, 0x4

    if-eqz v5, :cond_3af

    .line 8628
    if-nez v34, :cond_3af

    .line 8630
    const/16 v34, 0x1

    .line 8631
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_f18
    .catch Ljava/lang/RuntimeException; {:try_start_e36 .. :try_end_f18} :catch_701

    if-nez v5, :cond_f33

    .line 8633
    :try_start_f1a
    new-instance v10, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/4 v12, 0x0

    const-string v13, "BlurSurface"

    const/4 v14, -0x1

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, -0x1

    const/high16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_f33
    .catch Ljava/lang/Exception; {:try_start_f1a .. :try_end_f33} :catch_f7a
    .catch Ljava/lang/RuntimeException; {:try_start_f1a .. :try_end_f33} :catch_701

    .line 8644
    :cond_f33
    :goto_f33
    :try_start_f33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    if-eqz v5, :cond_3af

    .line 8648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/view/Surface;->setPosition(II)V

    .line 8649
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Landroid/view/Surface;->setSize(II)V

    .line 8650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    .line 8651
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z
    :try_end_f5e
    .catch Ljava/lang/RuntimeException; {:try_start_f33 .. :try_end_f5e} :catch_701

    if-nez v5, :cond_3af

    .line 8655
    :try_start_f60
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_f67
    .catch Ljava/lang/RuntimeException; {:try_start_f60 .. :try_end_f67} :catch_f85

    .line 8659
    :goto_f67
    const/4 v5, 0x1

    :try_start_f68
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_3af

    .line 8621
    :cond_f6e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move/from16 v0, v59

    move/from16 v1, v58

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->show(II)V

    goto :goto_ef9

    .line 8638
    :catch_f7a
    move-exception v49

    .line 8639
    .local v49, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v8, "Exception creating Blur surface"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f33

    .line 8656
    .end local v49           #e:Ljava/lang/Exception;
    :catch_f85
    move-exception v49

    .line 8657
    .local v49, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v8, "Failure showing blur surface"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f67

    .line 8675
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v36           #canBeSeen:Z
    .end local v47           #displayed:Z
    .end local v49           #e:Ljava/lang/RuntimeException;
    .end local v66           #obscuredChanged:Z
    .end local v68           #opaqueDrawn:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_f90
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v5, :cond_fc3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_fc3

    .line 8676
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_fb8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v5, :cond_fb8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_ff8

    :cond_fb8
    const/4 v5, 0x1

    :goto_fb9
    move/from16 v0, v46

    move-wide/from16 v1, v42

    invoke-virtual {v8, v0, v1, v2, v5}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v29, v29, v5

    .line 8680
    :cond_fc3
    if-nez v34, :cond_fd7

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z
    :try_end_fc9
    .catch Ljava/lang/RuntimeException; {:try_start_f68 .. :try_end_fc9} :catch_701

    if-eqz v5, :cond_fd7

    .line 8684
    :try_start_fcb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_fd2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fcb .. :try_end_fd2} :catch_ffa
    .catch Ljava/lang/RuntimeException; {:try_start_fcb .. :try_end_fd2} :catch_701

    .line 8688
    :goto_fd2
    const/4 v5, 0x0

    :try_start_fd3
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    .line 8691
    :cond_fd7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v5, :cond_70b

    .line 8692
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_1003

    .line 8693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_70b

    .line 8676
    :cond_ff8
    const/4 v5, 0x0

    goto :goto_fb9

    .line 8685
    :catch_ffa
    move-exception v49

    .line 8686
    .local v49, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v8, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd2

    .line 8696
    .end local v49           #e:Ljava/lang/IllegalArgumentException;
    :cond_1003
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v5}, Lcom/android/server/wm/BlackFrame;->clearMatrix()V
    :try_end_100a
    .catch Ljava/lang/RuntimeException; {:try_start_fd3 .. :try_end_100a} :catch_701

    goto/16 :goto_70b

    .line 8732
    .end local v19           #N:I
    .end local v34           #blurring:Z
    .end local v40           #covered:Z
    .end local v46           #dimming:Z
    .end local v65           #obscured:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v76           #syswin:Z
    .restart local v45       #diff:I
    .restart local v89       #win:Lcom/android/server/wm/WindowState;
    :cond_100c
    const/16 v39, 0x0

    goto/16 :goto_76e

    .line 8746
    .restart local v39       #configChanged:Z
    :cond_1010
    const/16 v16, 0x0

    goto/16 :goto_798

    .line 8752
    .end local v39           #configChanged:Z
    :catch_1014
    move-exception v49

    .line 8753
    .local v49, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_7aa

    .line 8790
    .end local v45           #diff:I
    .end local v49           #e:Landroid/os/RemoteException;
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    .restart local v84       #wallpaperDestroyed:Z
    :cond_101c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_1026
    if-ltz v57, :cond_1065

    .line 8791
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/android/server/wm/AppWindowToken;

    .line 8792
    .local v78, token:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v78

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v5, :cond_1062

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1062

    .line 8796
    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8797
    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    .line 8800
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8801
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8790
    :cond_1062
    add-int/lit8 v57, v57, -0x1

    goto :goto_1026

    .line 8805
    .end local v78           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_1065
    const/16 v62, 0x0

    .line 8807
    .local v62, needRelayout:Z
    if-nez v29, :cond_1083

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v5, :cond_1083

    .line 8814
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 8815
    const/16 v62, 0x1

    .line 8816
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 8817
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8819
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8822
    :cond_1083
    if-eqz v50, :cond_108d

    .line 8823
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8825
    :cond_108d
    if-eqz v84, :cond_1097

    .line 8826
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_114e

    const/16 v62, 0x1

    .line 8828
    :cond_1097
    :goto_1097
    if-eqz v62, :cond_1152

    .line 8829
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    .line 8836
    :cond_10a0
    :goto_10a0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8838
    if-eqz v56, :cond_1173

    const/4 v5, 0x1

    :goto_10ab
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Z)V

    .line 8839
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_10dc

    .line 8840
    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-ltz v5, :cond_10c1

    const/high16 v5, 0x3f80

    cmpl-float v5, v72, v5

    if-lez v5, :cond_1176

    .line 8841
    :cond_10c1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 8846
    :goto_10c9
    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-ltz v5, :cond_10d4

    const/high16 v5, 0x3f80

    cmpl-float v5, v35, v5

    if-lez v5, :cond_1184

    .line 8847
    :cond_10d4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 8853
    :cond_10dc
    :goto_10dc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    move-object/from16 v0, v56

    if-eq v0, v5, :cond_10ff

    .line 8854
    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    .line 8855
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xc

    move-object/from16 v0, v56

    invoke-virtual {v5, v8, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v60

    .line 8856
    .local v60, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, v60

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 8859
    .end local v60           #m:Landroid/os/Message;
    :cond_10ff
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    if-eqz v5, :cond_1118

    .line 8861
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 8863
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 8866
    :cond_1118
    if-eqz v73, :cond_112c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_112c

    .line 8867
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 8868
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 8871
    :cond_112c
    if-eqz v82, :cond_1140

    .line 8873
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v37

    .line 8874
    .restart local v37       #changed:Z
    if-eqz v37, :cond_1192

    .line 8875
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8881
    .end local v37           #changed:Z
    :cond_1140
    :goto_1140
    if-eqz v69, :cond_1149

    if-nez v62, :cond_1149

    if-nez v82, :cond_1149

    .line 8882
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 8887
    :cond_1149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    goto/16 :goto_d

    .line 8826
    :cond_114e
    const/16 v62, 0x0

    goto/16 :goto_1097

    .line 8830
    :cond_1152
    if-eqz v29, :cond_10a0

    .line 8831
    const/high16 v5, 0x447a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRefreshRate()F

    move-result v8

    div-float/2addr v5, v8

    float-to-int v0, v5

    move/from16 v70, v0

    .line 8832
    .local v70, refreshTimeUs:I
    move/from16 v0, v70

    int-to-long v10, v0

    add-long v10, v10, v42

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_10a0

    .line 8838
    .end local v70           #refreshTimeUs:I
    :cond_1173
    const/4 v5, 0x0

    goto/16 :goto_10ab

    .line 8843
    :cond_1176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/high16 v8, 0x437f

    mul-float v8, v8, v72

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_10c9

    .line 8849
    :cond_1184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/high16 v8, 0x437f

    mul-float v8, v8, v35

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_10dc

    .line 8877
    .restart local v37       #changed:Z
    :cond_1192
    const/16 v82, 0x0

    goto :goto_1140

    .line 8054
    nop

    :sswitch_data_1196
    .sparse-switch
        0x1006 -> :sswitch_a4e
        0x1008 -> :sswitch_a4e
        0x100a -> :sswitch_a4e
        0x2007 -> :sswitch_a51
        0x2009 -> :sswitch_a51
        0x200b -> :sswitch_a51
    .end sparse-switch
.end method

.method private final performLayoutLockedInner(ZZ)I
    .registers 16
    .parameter "initial"
    .parameter "updateInputWindows"

    .prologue
    const/4 v10, 0x0

    .line 7406
    iget-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-nez v9, :cond_7

    move v9, v10

    .line 7531
    :goto_6
    return v9

    .line 7410
    :cond_7
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7412
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 7413
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 7415
    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7416
    .local v1, NFW:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_14
    if-ge v5, v1, :cond_24

    .line 7417
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/FakeWindowImpl;

    invoke-virtual {v9, v3, v2}, Lcom/android/server/wm/FakeWindowImpl;->layout(II)V

    .line 7416
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 7420
    :cond_24
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7429
    .local v0, N:I
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v9, v3, v2, v11}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(III)V

    .line 7431
    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v9, 0x1

    .line 7432
    .local v6, seq:I
    if-gez v6, :cond_38

    const/4 v6, 0x0

    .line 7433
    :cond_38
    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 7437
    const/4 v7, -0x1

    .line 7438
    .local v7, topAttached:I
    add-int/lit8 v5, v0, -0x1

    :goto_3d
    if-ltz v5, :cond_73

    .line 7439
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 7444
    .local v8, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v4

    .line 7470
    .local v4, gone:Z
    if-eqz v4, :cond_55

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v9, :cond_55

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v9, :cond_6c

    .line 7471
    :cond_55
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_6f

    .line 7472
    if-eqz p1, :cond_5d

    .line 7474
    iput-boolean v10, v8, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 7476
    :cond_5d
    iput-boolean v10, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 7477
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 7478
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, 0x0

    invoke-interface {v9, v8, v11, v12}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7479
    iput v6, v8, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 7438
    :cond_6c
    :goto_6c
    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    .line 7485
    :cond_6f
    if-gez v7, :cond_6c

    move v7, v5

    goto :goto_6c

    .line 7494
    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/wm/WindowState;
    :cond_73
    move v5, v7

    :goto_74
    if-ltz v5, :cond_ab

    .line 7495
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 7497
    .restart local v8       #win:Lcom/android/server/wm/WindowState;
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_a8

    .line 7507
    iget v9, v8, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v11, 0x8

    if-eq v9, v11, :cond_8c

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_94

    :cond_8c
    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v9, :cond_94

    iget-boolean v9, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v9, :cond_a8

    .line 7509
    :cond_94
    if-eqz p1, :cond_98

    .line 7511
    iput-boolean v10, v8, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 7513
    :cond_98
    iput-boolean v10, v8, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 7514
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 7515
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v9, v8, v11, v12}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7516
    iput v6, v8, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 7494
    :cond_a8
    add-int/lit8 v5, v5, -0x1

    goto :goto_74

    .line 7526
    .end local v8           #win:Lcom/android/server/wm/WindowState;
    :cond_ab
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v9}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 7527
    if-eqz p2, :cond_b7

    .line 7528
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 7531
    :cond_b7
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v9

    goto/16 :goto_6
.end method

.method private placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 827
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 831
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 832
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 833
    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 840
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 841
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 842
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I
    .registers 6
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4338
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4339
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 4340
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 4339
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4342
    :cond_18
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/wm/WindowState;)I
    .registers 9
    .parameter "index"
    .parameter "win"

    .prologue
    const/4 v5, 0x0

    .line 4308
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4309
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 4310
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_9
    if-ge v3, v0, :cond_2f

    .line 4311
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4312
    .local v2, cwin:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_23

    iget v4, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v4, :cond_23

    .line 4315
    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4316
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4317
    add-int/lit8 p1, p1, 0x1

    .line 4318
    const/4 v1, 0x1

    .line 4322
    :cond_23
    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4323
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4324
    add-int/lit8 p1, p1, 0x1

    .line 4310
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4326
    .end local v2           #cwin:Lcom/android/server/wm/WindowState;
    :cond_2f
    if-nez v1, :cond_3a

    .line 4329
    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4330
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4331
    add-int/lit8 p1, p1, 0x1

    .line 4333
    :cond_3a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4334
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 1304
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1308
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1309
    .local v0, wpos:I
    if-ltz v0, :cond_17

    .line 1312
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1313
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1314
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1316
    :cond_17
    return-void
.end method

.method private readForcedDisplaySizeLocked()V
    .registers 9

    .prologue
    const/16 v7, 0x2c

    .line 7108
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_size_forced"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7110
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_17

    .line 7125
    :cond_16
    :goto_16
    return-void

    .line 7113
    :cond_17
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 7114
    .local v2, pos:I
    if-lez v2, :cond_16

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v5, v2, :cond_16

    .line 7119
    const/4 v5, 0x0

    :try_start_24
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7120
    .local v4, width:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_35} :catch_3a

    move-result v1

    .line 7124
    .local v1, height:I
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    goto :goto_16

    .line 7121
    .end local v1           #height:I
    .end local v4           #width:I
    :catch_3a
    move-exception v0

    .line 7122
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_16
.end method

.method private rebuildBlackFrame(Z)V
    .registers 12
    .parameter "inTransaction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7065
    if-nez p1, :cond_7

    .line 7068
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 7071
    :cond_7
    :try_start_7
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v8, :cond_13

    .line 7072
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v8}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 7073
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 7075
    :cond_13
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-lt v8, v9, :cond_1f

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v8, v9, :cond_4d

    .line 7078
    :cond_1f
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v8, v7, :cond_28

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_29

    :cond_28
    move v6, v7

    .line 7080
    .local v6, rotated:Z
    :cond_29
    if-eqz v6, :cond_53

    .line 7081
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 7082
    .local v3, initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 7083
    .local v2, initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 7084
    .local v1, baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7091
    .local v0, baseH:I
    :goto_33
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7092
    .local v5, outer:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_5c

    .line 7094
    .local v4, inner:Landroid/graphics/Rect;
    :try_start_41
    new-instance v7, Lcom/android/server/wm/BlackFrame;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const v9, 0x1e8480

    invoke-direct {v7, v8, v5, v4, v9}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_5c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_41 .. :try_end_4d} :catch_63

    .line 7099
    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v4           #inner:Landroid/graphics/Rect;
    .end local v5           #outer:Landroid/graphics/Rect;
    .end local v6           #rotated:Z
    :cond_4d
    :goto_4d
    if-nez p1, :cond_52

    .line 7100
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 7105
    :cond_52
    return-void

    .line 7086
    .restart local v6       #rotated:Z
    :cond_53
    :try_start_53
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 7087
    .restart local v3       #initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 7088
    .restart local v2       #initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7089
    .restart local v1       #baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5c

    .restart local v0       #baseH:I
    goto :goto_33

    .line 7099
    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v6           #rotated:Z
    :catchall_5c
    move-exception v7

    if-nez p1, :cond_62

    .line 7100
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 7099
    :cond_62
    throw v7

    .line 7095
    .restart local v0       #baseH:I
    .restart local v1       #baseW:I
    .restart local v2       #initH:I
    .restart local v3       #initW:I
    .restart local v4       #inner:Landroid/graphics/Rect;
    .restart local v5       #outer:Landroid/graphics/Rect;
    .restart local v6       #rotated:Z
    :catch_63
    move-exception v7

    goto :goto_4d
.end method

.method private reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I
    .registers 10
    .parameter "curSize"
    .parameter "rotation"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 6005
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 6006
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 6007
    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 6008
    .local v0, scale:F
    iget v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 6009
    .local v1, size:I
    if-eqz p1, :cond_24

    if-ge v1, p1, :cond_25

    .line 6010
    :cond_24
    move p1, v1

    .line 6012
    :cond_25
    return p1
.end method

.method private reduceConfigLayout(IIFII)I
    .registers 19
    .parameter "curLayout"
    .parameter "rotation"
    .parameter "density"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 5899
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v10

    .line 5900
    .local v10, w:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v3

    .line 5906
    .local v3, h:I
    move v4, v10

    .line 5907
    .local v4, longSize:I
    move v8, v3

    .line 5908
    .local v8, shortSize:I
    if-ge v4, v8, :cond_1b

    .line 5909
    move v9, v4

    .line 5910
    .local v9, tmp:I
    move v4, v8

    .line 5911
    move v8, v9

    .line 5913
    .end local v9           #tmp:I
    :cond_1b
    int-to-float v11, v4

    div-float v11, v11, p3

    float-to-int v4, v11

    .line 5914
    int-to-float v11, v8

    div-float v11, v11, p3

    float-to-int v8, v11

    .line 5920
    const/16 v11, 0x1d6

    if-ge v4, v11, :cond_3e

    .line 5923
    const/4 v7, 0x1

    .line 5924
    .local v7, screenLayoutSize:I
    const/4 v6, 0x0

    .line 5925
    .local v6, screenLayoutLong:Z
    const/4 v5, 0x0

    .line 5960
    .local v5, screenLayoutCompatNeeded:Z
    :goto_2a
    if-nez v6, :cond_30

    .line 5961
    and-int/lit8 v11, p1, -0x31

    or-int/lit8 p1, v11, 0x10

    .line 5964
    :cond_30
    if-eqz v5, :cond_35

    .line 5965
    const/high16 v11, 0x1000

    or-int/2addr p1, v11

    .line 5967
    :cond_35
    and-int/lit8 v2, p1, 0xf

    .line 5968
    .local v2, curSize:I
    if-ge v7, v2, :cond_3d

    .line 5969
    and-int/lit8 v11, p1, -0x10

    or-int p1, v11, v7

    .line 5972
    :cond_3d
    return p1

    .line 5928
    .end local v2           #curSize:I
    .end local v5           #screenLayoutCompatNeeded:Z
    .end local v6           #screenLayoutLong:Z
    .end local v7           #screenLayoutSize:I
    :cond_3e
    const/16 v11, 0x3c0

    if-lt v4, v11, :cond_5a

    const/16 v11, 0x2d0

    if-lt v8, v11, :cond_5a

    .line 5931
    const/4 v7, 0x4

    .line 5943
    .restart local v7       #screenLayoutSize:I
    :goto_47
    const/16 v11, 0x141

    if-gt v8, v11, :cond_4f

    const/16 v11, 0x23a

    if-le v4, v11, :cond_66

    .line 5944
    :cond_4f
    const/4 v5, 0x1

    .line 5950
    .restart local v5       #screenLayoutCompatNeeded:Z
    :goto_50
    mul-int/lit8 v11, v4, 0x3

    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v12, v8, -0x1

    if-lt v11, v12, :cond_68

    .line 5952
    const/4 v6, 0x1

    .restart local v6       #screenLayoutLong:Z
    goto :goto_2a

    .line 5932
    .end local v5           #screenLayoutCompatNeeded:Z
    .end local v6           #screenLayoutLong:Z
    .end local v7           #screenLayoutSize:I
    :cond_5a
    const/16 v11, 0x280

    if-lt v4, v11, :cond_64

    const/16 v11, 0x1e0

    if-lt v8, v11, :cond_64

    .line 5935
    const/4 v7, 0x3

    .restart local v7       #screenLayoutSize:I
    goto :goto_47

    .line 5937
    .end local v7           #screenLayoutSize:I
    :cond_64
    const/4 v7, 0x2

    .restart local v7       #screenLayoutSize:I
    goto :goto_47

    .line 5946
    :cond_66
    const/4 v5, 0x0

    .restart local v5       #screenLayoutCompatNeeded:Z
    goto :goto_50

    .line 5954
    :cond_68
    const/4 v6, 0x0

    .restart local v6       #screenLayoutLong:Z
    goto :goto_2a
.end method

.method private reduceConfigWidthSize(IIFII)I
    .registers 8
    .parameter "curSize"
    .parameter "rotation"
    .parameter "density"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 5889
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-int v0, v1

    .line 5890
    .local v0, size:I
    if-ge v0, p1, :cond_c

    .line 5891
    move p1, v0

    .line 5893
    :cond_c
    return p1
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4392
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4393
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_48

    .line 4394
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4395
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 4398
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 4399
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    add-int/lit8 v1, v1, -0x1

    .line 4402
    add-int/lit8 v0, v0, -0x1

    .line 4393
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4405
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_48
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .registers 14
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2300
    iget-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v5, :cond_8

    .line 2394
    :goto_7
    return-void

    .line 2305
    :cond_8
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_10
    if-ltz v2, :cond_44

    .line 2306
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2307
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force-removing child win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2305
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 2312
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_44
    iput-boolean v8, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 2314
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_4d

    .line 2315
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2324
    :cond_4d
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2325
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->removeLocked()V

    .line 2328
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2330
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2331
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2334
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_c8

    .line 2335
    iput-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2340
    :cond_72
    :goto_72
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2341
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2343
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2344
    if-eqz v0, :cond_82

    .line 2345
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2350
    :cond_82
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_95

    .line 2351
    iget-boolean v5, v4, Lcom/android/server/wm/WindowToken;->explicit:Z

    if-nez v5, :cond_d6

    .line 2352
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2358
    :cond_95
    :goto_95
    if-eqz v0, :cond_9d

    .line 2359
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_db

    .line 2360
    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2377
    :cond_9d
    :goto_9d
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_103

    .line 2378
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2379
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2384
    :cond_ac
    :goto_ac
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-nez v5, :cond_c1

    .line 2385
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2386
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2387
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2388
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_c1

    .line 2389
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2393
    :cond_c1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_7

    .line 2336
    .end local v0           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_c8
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_72

    .line 2337
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_72

    .line 2353
    .restart local v0       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    :cond_d6
    if-eqz v0, :cond_95

    .line 2354
    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    goto :goto_95

    .line 2361
    :cond_db
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_ea

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_ea

    .line 2364
    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    goto :goto_9d

    .line 2365
    :cond_ea
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_9d

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v5, :cond_9d

    .line 2372
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2373
    .local v3, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9d

    .line 2380
    .end local v3           #m:Landroid/os/Message;
    :cond_103
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_ac

    .line 2381
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_ac
.end method

.method private reportInjectionResult(I)Z
    .registers 5
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 6405
    packed-switch p1, :pswitch_data_26

    .line 6418
    :pswitch_4
    const-string v1, "WindowManager"

    const-string v2, "Input event injection failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6419
    :goto_b
    return v0

    .line 6407
    :pswitch_c
    const-string v0, "WindowManager"

    const-string v1, "Input event injection permission denied."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6408
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6412
    :pswitch_1b
    const/4 v0, 0x1

    goto :goto_b

    .line 6414
    :pswitch_1d
    const-string v1, "WindowManager"

    const-string v2, "Input event injection timed out."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 6405
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_c
        :pswitch_4
        :pswitch_1d
    .end packed-switch
.end method

.method private setForcedDisplaySizeLocked(II)V
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7128
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using new display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7131
    :try_start_27
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7132
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 7133
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_70

    .line 7134
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    .line 7136
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7138
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    .line 7139
    .local v0, configChanged:Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 7140
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 7141
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 7142
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_5b

    .line 7143
    const/4 v0, 0x1

    .line 7147
    :cond_5b
    if-eqz v0, :cond_69

    .line 7148
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 7149
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 7150
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 7153
    :cond_69
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    .line 7155
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 7156
    return-void

    .line 7133
    .end local v0           #configChanged:Z
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method

.method private shouldAllowDisableKeyguard()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4540
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1d

    .line 4541
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4543
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1d

    .line 4544
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_1b
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .line 4549
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1d
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v2, :cond_24

    :goto_21
    return v2

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_22
    move v1, v3

    .line 4544
    goto :goto_1b

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_24
    move v2, v3

    .line 4549
    goto :goto_21
.end method

.method private startFreezingDisplayLocked(Z)V
    .registers 9
    .parameter "inTransaction"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 9207
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_8

    .line 9250
    :cond_7
    :goto_7
    return-void

    .line 9211
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9217
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9219
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 9221
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    .line 9223
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v1, :cond_2a

    .line 9224
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 9225
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 9226
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 9235
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 9236
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 9237
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9239
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_57

    .line 9240
    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v6

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;ZIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9244
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9245
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_7
.end method

.method private stopFreezingDisplayLocked()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xf

    const/4 v9, 0x0

    .line 9253
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_9

    .line 9317
    :cond_8
    :goto_8
    return-void

    .line 9257
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_8

    .line 9261
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 9262
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9267
    const/4 v8, 0x0

    .line 9269
    .local v8, updateRotation:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 9272
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v2, 0x2710

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceSession;JFII)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 9274
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    .line 9286
    :goto_42
    invoke-static {v9}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 9288
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 9296
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    .line 9303
    .local v7, configChanged:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9304
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9307
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9309
    if-eqz v8, :cond_6c

    .line 9311
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    or-int/2addr v7, v0

    .line 9314
    :cond_6c
    if-eqz v7, :cond_8

    .line 9315
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 9276
    .end local v7           #configChanged:Z
    :cond_76
    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9277
    const/4 v8, 0x1

    goto :goto_42

    .line 9280
    :cond_7a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_85

    .line 9281
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 9282
    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9284
    :cond_85
    const/4 v8, 0x1

    goto :goto_42
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z
    .registers 9
    .parameter "token"

    .prologue
    const/4 v5, 0x1

    .line 4220
    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4221
    .local v0, NW:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_34

    .line 4222
    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4224
    .local v4, win:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4225
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4226
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4227
    .local v3, j:I
    :goto_1f
    if-lez v3, :cond_31

    .line 4228
    add-int/lit8 v3, v3, -0x1

    .line 4229
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4232
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 4221
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4235
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_34
    if-lez v0, :cond_37

    :goto_36
    return v5

    :cond_37
    const/4 v5, 0x0

    goto :goto_36
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I
    .registers 8
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1281
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1282
    .local v3, wpos:I
    if-ltz v3, :cond_38

    .line 1283
    if-ge v3, p1, :cond_c

    add-int/lit8 p1, p1, -0x1

    .line 1285
    :cond_c
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1286
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1287
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1288
    .local v0, NC:I
    :cond_1a
    :goto_1a
    if-lez v0, :cond_38

    .line 1289
    add-int/lit8 v0, v0, -0x1

    .line 1290
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1291
    .local v2, cw:Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1292
    .local v1, cpos:I
    if-ltz v1, :cond_1a

    .line 1293
    if-ge v1, p1, :cond_32

    add-int/lit8 p1, p1, -0x1

    .line 1296
    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    .line 1300
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/wm/WindowState;
    :cond_38
    return p1
.end method

.method private updateFocusedWindowLocked(IZ)Z
    .registers 12
    .parameter "mode"
    .parameter "updateInputWindows"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 9085
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 9086
    .local v2, newFocus:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v6, v2, :cond_56

    .line 9089
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9090
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9093
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 9094
    .local v3, oldFocus:Lcom/android/server/wm/WindowState;
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 9095
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9096
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6, v3, v2}, Landroid/view/WindowManagerPolicy;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    .line 9098
    .local v0, focusChanged:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 9099
    .local v1, imWindow:Lcom/android/server/wm/WindowState;
    if-eq v2, v1, :cond_3f

    if-eq v3, v1, :cond_3f

    .line 9100
    if-eq p1, v5, :cond_30

    if-eq p1, v8, :cond_30

    move v4, v5

    :cond_30
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 9103
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 9105
    :cond_38
    if-ne p1, v7, :cond_50

    .line 9106
    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    .line 9107
    and-int/lit8 v0, v0, -0x2

    .line 9115
    :cond_3f
    :goto_3f
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_4a

    .line 9117
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 9118
    if-ne p1, v7, :cond_4a

    .line 9119
    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    .line 9123
    :cond_4a
    if-eq p1, v5, :cond_4f

    .line 9126
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    .line 9130
    .end local v0           #focusChanged:I
    .end local v1           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v3           #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_4f
    :goto_4f
    return v5

    .line 9108
    .restart local v0       #focusChanged:I
    .restart local v1       #imWindow:Lcom/android/server/wm/WindowState;
    .restart local v3       #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_50
    if-ne p1, v8, :cond_3f

    .line 9111
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    goto :goto_3f

    .end local v0           #focusChanged:I
    .end local v1           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v3           #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_56
    move v5, v4

    .line 9130
    goto :goto_4f
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 9
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3440
    const/4 v0, 0x0

    .line 3442
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3443
    if-eqz p2, :cond_16

    .line 3444
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3446
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_16

    .line 3447
    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 3451
    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3470
    :cond_1a
    :goto_1a
    return-object v0

    .line 3453
    :cond_1b
    if-eqz p1, :cond_1a

    .line 3458
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3459
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 3460
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3461
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_1a

    .line 3462
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 3463
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3464
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 3465
    new-instance v0, Landroid/content/res/Configuration;

    .end local v0           #config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_1a
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .registers 14
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    .line 3258
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "addAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 3260
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3271
    :cond_12
    :try_start_12
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_42

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v1, v4, v6

    .line 3277
    .local v1, inputDispatchingTimeoutNanos:J
    :goto_1b
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3278
    :try_start_1e
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 3279
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_50

    .line 3280
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_73

    .line 3298
    :goto_41
    return-void

    .line 3272
    .end local v1           #inputDispatchingTimeoutNanos:J
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catch_42
    move-exception v0

    .line 3273
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Could not get dispatching timeout."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3274
    const-wide v1, 0x12a05f200L

    .restart local v1       #inputDispatchingTimeoutNanos:J
    goto :goto_1b

    .line 3283
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_50
    :try_start_50
    new-instance v3, Lcom/android/server/wm/AppWindowToken;

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 3284
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iput-wide v1, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    .line 3285
    iput p3, v3, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3286
    iput-boolean p5, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    .line 3287
    iput p4, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3289
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3290
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3293
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    .line 3294
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3297
    monitor-exit v5

    goto :goto_41

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_73
    move-exception v4

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_73

    throw v4
.end method

.method public addFakeWindow(Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;
    .registers 21
    .parameter "looper"
    .parameter "inputHandler"
    .parameter "name"
    .parameter "windowType"
    .parameter "layoutParamsFlags"
    .parameter "canReceiveKeys"
    .parameter "hasFocus"
    .parameter "touchFullscreen"

    .prologue
    .line 9423
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 9424
    :try_start_3
    new-instance v0, Lcom/android/server/wm/FakeWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/FakeWindowImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)V

    .line 9426
    .local v0, fw:Lcom/android/server/wm/FakeWindowImpl;
    const/4 v10, 0x0

    .line 9427
    .local v10, i:I
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_2d

    .line 9428
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FakeWindowImpl;

    iget v1, v1, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iget v2, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    if-gt v1, v2, :cond_17

    .line 9432
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9433
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 9434
    monitor-exit v11

    return-object v0

    .line 9435
    .end local v0           #fw:Lcom/android/server/wm/FakeWindowImpl;
    .end local v10           #i:I
    :catchall_3a
    move-exception v1

    monitor-exit v11
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1238
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1239
    .local v0, pos:I
    if-ltz v0, :cond_1a

    .line 1240
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1243
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1244
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1245
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1251
    :goto_19
    return-void

    .line 1248
    :cond_1a
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1249
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1250
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_19
.end method

.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 31
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    .line 2008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 2009
    .local v20, res:I
    if-eqz v20, :cond_f

    move/from16 v3, v20

    .line 2213
    :goto_e
    return v3

    .line 2013
    :cond_f
    const/16 v19, 0x0

    .line 2014
    .local v19, reportNewConfig:Z
    const/4 v7, 0x0

    .line 2015
    .local v7, attachedWindow:Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 2018
    .local v21, win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2019
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_2e

    .line 2020
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Display has not been initialialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_29

    .line 2205
    :catchall_29
    move-exception v3

    move-object/from16 v2, v21

    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .local v2, win:Lcom/android/server/wm/WindowState;
    :goto_2c
    :try_start_2c
    monitor-exit v22
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1c4

    throw v3

    .line 2023
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    .restart local v21       #win:Lcom/android/server/wm/WindowState;
    :cond_2e
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 2024
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const/4 v3, -0x5

    monitor-exit v22

    goto :goto_e

    .line 2028
    :cond_5f
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_d9

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_d9

    .line 2029
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 2030
    if-nez v7, :cond_a3

    .line 2031
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is not a window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_e

    .line 2035
    :cond_a3
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_d9

    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_d9

    .line 2037
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_e

    .line 2043
    :cond_d9
    const/4 v11, 0x0

    .line 2044
    .local v11, addToken:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 2045
    .local v6, token:Lcom/android/server/wm/WindowToken;
    if-nez v6, :cond_1c7

    .line 2046
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_11f

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_11f

    .line 2048
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add application window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_e

    .line 2052
    :cond_11f
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_14d

    .line 2053
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_e

    .line 2057
    :cond_14d
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_17b

    .line 2058
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_e

    .line 2062
    :cond_17b
    new-instance v6, Lcom/android/server/wm/WindowToken;

    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 2063
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    const/4 v11, 0x1

    .line 2096
    :cond_189
    new-instance v2, Lcom/android/server/wm/WindowState;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;I)V
    :try_end_19a
    .catchall {:try_start_2e .. :try_end_19a} :catchall_29

    .line 2098
    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :try_start_19a
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v3, :cond_299

    .line 2101
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is dead, aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const/4 v3, -0x4

    monitor-exit v22
    :try_end_1c2
    .catchall {:try_start_19a .. :try_end_1c2} :catchall_1c4

    goto/16 :goto_e

    .line 2205
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #addToken:Z
    :catchall_1c4
    move-exception v3

    goto/16 :goto_2c

    .line 2064
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #addToken:Z
    .restart local v21       #win:Lcom/android/server/wm/WindowState;
    :cond_1c7
    :try_start_1c7
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_231

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_231

    .line 2066
    iget-object v12, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2067
    .local v12, atoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v12, :cond_1fc

    .line 2068
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with non-application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const/4 v3, -0x3

    monitor-exit v22

    goto/16 :goto_e

    .line 2071
    :cond_1fc
    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_222

    .line 2072
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with exiting application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const/4 v3, -0x4

    monitor-exit v22

    goto/16 :goto_e

    .line 2076
    :cond_222
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_189

    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_189

    .line 2080
    const/4 v3, -0x6

    monitor-exit v22

    goto/16 :goto_e

    .line 2082
    .end local v12           #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_231
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_265

    .line 2083
    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_189

    .line 2084
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_e

    .line 2088
    :cond_265
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_189

    .line 2089
    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7dd

    if-eq v3, v4, :cond_189

    .line 2090
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    const/4 v3, -0x1

    monitor-exit v22
    :try_end_297
    .catchall {:try_start_1c7 .. :try_end_297} :catchall_29

    goto/16 :goto_e

    .line 2106
    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :cond_299
    :try_start_299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v2, v0}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 2109
    if-eqz v20, :cond_2b3

    .line 2110
    monitor-exit v22

    move/from16 v3, v20

    goto/16 :goto_e

    .line 2113
    :cond_2b3
    if-eqz p7, :cond_2de

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2de

    .line 2115
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v16

    .line 2116
    .local v16, name:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v15

    .line 2117
    .local v15, inputChannels:[Landroid/view/InputChannel;
    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->setInputChannel(Landroid/view/InputChannel;)V

    .line 2118
    const/4 v3, 0x1

    aget-object v3, v15, v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 2120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/InputManager;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V

    .line 2125
    .end local v15           #inputChannels:[Landroid/view/InputChannel;
    .end local v16           #name:Ljava/lang/String;
    :cond_2de
    const/16 v20, 0x0

    .line 2127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2129
    .local v17, origId:J
    if-eqz v11, :cond_2f1

    .line 2130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    :cond_2f1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->attach()V

    .line 2133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_30e

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_30e

    .line 2137
    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2140
    :cond_30e
    const/4 v14, 0x1

    .line 2142
    .local v14, imMayMove:Z
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_397

    .line 2143
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2144
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V

    .line 2145
    const/4 v14, 0x0

    .line 2161
    :cond_321
    :goto_321
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 2165
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_337

    .line 2166
    or-int/lit8 v20, v20, 0x1

    .line 2168
    :cond_337
    if-eqz v2, :cond_343

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_343

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v3, :cond_345

    .line 2169
    :cond_343
    or-int/lit8 v20, v20, 0x2

    .line 2172
    :cond_345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 2174
    const/4 v13, 0x0

    .line 2175
    .local v13, focusChanged:Z
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-eqz v3, :cond_35e

    .line 2176
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v13

    .line 2178
    if-eqz v13, :cond_35e

    .line 2179
    const/4 v14, 0x0

    .line 2183
    :cond_35e
    if-eqz v14, :cond_366

    .line 2184
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2187
    :cond_366
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2193
    if-eqz v13, :cond_371

    .line 2194
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    .line 2196
    :cond_371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2202
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    if-eqz v3, :cond_38a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_38a

    .line 2203
    const/16 v19, 0x1

    .line 2205
    :cond_38a
    monitor-exit v22
    :try_end_38b
    .catchall {:try_start_299 .. :try_end_38b} :catchall_1c4

    .line 2207
    if-eqz v19, :cond_390

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 2211
    :cond_390
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v3, v20

    .line 2213
    goto/16 :goto_e

    .line 2146
    .end local v13           #focusChanged:Z
    :cond_397
    :try_start_397
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_3b2

    .line 2147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 2150
    const/4 v14, 0x0

    goto/16 :goto_321

    .line 2152
    :cond_3b2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2153
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_3cb

    .line 2154
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2155
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_321

    .line 2156
    :cond_3cb
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_321

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_3d7
    .catchall {:try_start_397 .. :try_end_3d7} :catchall_1c4

    goto/16 :goto_321
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 5795
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5796
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5797
    monitor-exit v1

    .line 5798
    return-void

    .line 5797
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "type"

    .prologue
    .line 3184
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3186
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3189
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3190
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 3191
    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_39

    .line 3192
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    monitor-exit v2

    .line 3201
    :goto_38
    return-void

    .line 3195
    :cond_39
    new-instance v0, Lcom/android/server/wm/WindowToken;

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 3196
    .restart local v0       #wtoken:Lcom/android/server/wm/WindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    const/16 v1, 0x7dd

    if-ne p2, v1, :cond_4d

    .line 3198
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3200
    :cond_4d
    monitor-exit v2

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_4f
    move-exception v1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method adjustInputMethodDialogsLocked()V
    .registers 2

    .prologue
    .line 1470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1471
    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .registers 32

    .prologue
    .line 1491
    const/4 v4, 0x0

    .line 1493
    .local v4, changed:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1494
    .local v8, dw:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1498
    .local v7, dh:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 1499
    .local v13, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1500
    .local v3, N:I
    const/16 v25, 0x0

    .line 1501
    .local v25, w:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .line 1502
    .local v11, foundW:Lcom/android/server/wm/WindowState;
    const/4 v10, 0x0

    .line 1503
    .local v10, foundI:I
    const/16 v22, 0x0

    .line 1504
    .local v22, topCurW:Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 1505
    .local v21, topCurI:I
    const/16 v28, -0x1

    .line 1506
    .local v28, windowDetachedI:I
    move v12, v3

    .line 1507
    .local v12, i:I
    :cond_1c
    :goto_1c
    if-lez v12, :cond_d4

    .line 1508
    add-int/lit8 v12, v12, -0x1

    .line 1509
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #w:Lcom/android/server/wm/WindowState;
    check-cast v25, Lcom/android/server/wm/WindowState;

    .line 1510
    .restart local v25       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x7dd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_41

    .line 1511
    if-nez v22, :cond_1c

    .line 1512
    move-object/from16 v22, v25

    .line 1513
    move/from16 v21, v12

    goto :goto_1c

    .line 1517
    :cond_41
    const/16 v22, 0x0

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_73

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_73

    .line 1521
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    move/from16 v29, v0

    if-eqz v29, :cond_73

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1c

    .line 1530
    :cond_73
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v30, 0x10

    and-int v29, v29, v30

    if-eqz v29, :cond_103

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v29

    if-eqz v29, :cond_103

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_a7

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v29, v0

    if-nez v29, :cond_103

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v29, v0

    if-nez v29, :cond_103

    .line 1535
    :cond_a7
    move-object/from16 v11, v25

    .line 1536
    move v10, v12

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_d4

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_cc

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_1c

    :cond_cc
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_1c

    .line 1553
    :cond_d4
    if-nez v11, :cond_dc

    if-ltz v28, :cond_dc

    .line 1556
    move-object/from16 v11, v25

    .line 1557
    move/from16 v10, v28

    .line 1560
    :cond_dc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11e

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_113

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_113

    .line 1572
    const/16 v29, 0x0

    .line 1803
    :goto_102
    return v29

    .line 1548
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 1549
    move/from16 v28, v12

    goto/16 :goto_1c

    .line 1574
    :cond_113
    if-eqz v11, :cond_11e

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11e

    .line 1577
    const/16 v29, 0x0

    goto :goto_102

    .line 1581
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v0, v11, :cond_389

    .line 1587
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1588
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    .line 1591
    .local v19, oldW:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1595
    if-eqz v11, :cond_1b5

    if-eqz v19, :cond_1b5

    .line 1596
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_164

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_376

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_376

    :cond_164
    const/16 v16, 0x1

    .line 1598
    .local v16, oldAnim:Z
    :goto_166
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_17e

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_37a

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_37a

    :cond_17e
    const/4 v9, 0x1

    .line 1604
    .local v9, foundAnim:Z
    :goto_17f
    if-eqz v9, :cond_1b5

    if-eqz v16, :cond_1b5

    .line 1605
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 1609
    .local v17, oldI:I
    if-ltz v17, :cond_1b5

    .line 1617
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1a3

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1a3

    .line 1621
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1627
    :cond_1a3
    move/from16 v0, v17

    if-le v10, v0, :cond_37d

    .line 1632
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1633
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1634
    move-object/from16 v11, v19

    .line 1635
    move/from16 v10, v17

    .line 1665
    .end local v9           #foundAnim:Z
    .end local v16           #oldAnim:Z
    .end local v17           #oldI:I
    .end local v19           #oldW:Lcom/android/server/wm/WindowState;
    :cond_1b5
    :goto_1b5
    if-eqz v11, :cond_40f

    const/16 v24, 0x1

    .line 1666
    .local v24, visible:Z
    :goto_1b9
    if-eqz v24, :cond_253

    .line 1669
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v24

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_413

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_413

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move/from16 v29, v0

    :goto_1d9
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v29

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v29, v0

    move/from16 v0, v29

    add-int/lit16 v15, v0, 0x3e8

    .line 1687
    .local v15, maxLayer:I
    :goto_1f3
    if-lez v10, :cond_253

    .line 1688
    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    .line 1689
    .local v27, wb:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v15, :cond_417

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v0, v11, :cond_417

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_229

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_417

    :cond_229
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_253

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_253

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_417

    .line 1706
    .end local v15           #maxLayer:I
    .end local v27           #wb:Lcom/android/server/wm/WindowState;
    :cond_253
    if-nez v11, :cond_41d

    if-eqz v22, :cond_41d

    .line 1709
    move-object/from16 v11, v22

    .line 1710
    add-int/lit8 v10, v21, 0x1

    .line 1717
    :goto_25b
    if-eqz v24, :cond_2c9

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_293

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    .line 1722
    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_2c9

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    .line 1730
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1731
    .local v5, curTokenIndex:I
    :cond_2d3
    if-lez v5, :cond_462

    .line 1732
    add-int/lit8 v5, v5, -0x1

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowToken;

    .line 1734
    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    if-ne v0, v1, :cond_305

    .line 1735
    or-int/lit8 v4, v4, 0x4

    .line 1736
    if-nez v24, :cond_42f

    const/16 v29, 0x1

    :goto_2f7
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1739
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1742
    :cond_305
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1743
    .local v6, curWallpaperIndex:I
    :goto_30f
    if-lez v6, :cond_2d3

    .line 1744
    add-int/lit8 v6, v6, -0x1

    .line 1745
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 1747
    .local v26, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_32e

    .line 1748
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v0, v1, v8, v7, v2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1753
    :cond_32e
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    if-eq v0, v1, :cond_34d

    .line 1754
    move/from16 v0, v24

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 1759
    :try_start_340
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_34d
    .catch Landroid/os/RemoteException; {:try_start_340 .. :try_end_34d} :catch_466

    .line 1764
    :cond_34d
    :goto_34d
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1770
    move-object/from16 v0, v26

    if-ne v0, v11, :cond_436

    .line 1771
    add-int/lit8 v10, v10, -0x1

    .line 1772
    if-lez v10, :cond_433

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v29

    .line 1774
    :goto_375
    goto :goto_30f

    .line 1596
    .end local v5           #curTokenIndex:I
    .end local v6           #curWallpaperIndex:I
    .end local v20           #token:Lcom/android/server/wm/WindowToken;
    .end local v24           #visible:Z
    .end local v26           #wallpaper:Lcom/android/server/wm/WindowState;
    .restart local v19       #oldW:Lcom/android/server/wm/WindowState;
    :cond_376
    const/16 v16, 0x0

    goto/16 :goto_166

    .line 1598
    .restart local v16       #oldAnim:Z
    :cond_37a
    const/4 v9, 0x0

    goto/16 :goto_17f

    .line 1641
    .restart local v9       #foundAnim:Z
    .restart local v17       #oldI:I
    :cond_37d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1642
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1b5

    .line 1648
    .end local v9           #foundAnim:Z
    .end local v16           #oldAnim:Z
    .end local v17           #oldI:I
    .end local v19           #oldW:Lcom/android/server/wm/WindowState;
    :cond_389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1b5

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_3c1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_40a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_40a

    :cond_3c1
    const/4 v14, 0x1

    .line 1653
    .local v14, lowerAnimating:Z
    :goto_3c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_3f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_40c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_40c

    :cond_3f2
    const/16 v23, 0x1

    .line 1656
    .local v23, upperAnimating:Z
    :goto_3f4
    if-eqz v14, :cond_3f8

    if-nez v23, :cond_1b5

    .line 1660
    :cond_3f8
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1661
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1b5

    .line 1650
    .end local v14           #lowerAnimating:Z
    .end local v23           #upperAnimating:Z
    :cond_40a
    const/4 v14, 0x0

    goto :goto_3c2

    .line 1653
    .restart local v14       #lowerAnimating:Z
    :cond_40c
    const/16 v23, 0x0

    goto :goto_3f4

    .line 1665
    .end local v14           #lowerAnimating:Z
    :cond_40f
    const/16 v24, 0x0

    goto/16 :goto_1b9

    .line 1675
    .restart local v24       #visible:Z
    :cond_413
    const/16 v29, 0x0

    goto/16 :goto_1d9

    .line 1699
    .restart local v15       #maxLayer:I
    .restart local v27       #wb:Lcom/android/server/wm/WindowState;
    :cond_417
    move-object/from16 v11, v27

    .line 1700
    add-int/lit8 v10, v10, -0x1

    .line 1701
    goto/16 :goto_1f3

    .line 1714
    .end local v15           #maxLayer:I
    .end local v27           #wb:Lcom/android/server/wm/WindowState;
    :cond_41d
    if-lez v10, :cond_42d

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v29

    :goto_42b
    goto/16 :goto_25b

    :cond_42d
    const/4 v11, 0x0

    goto :goto_42b

    .line 1736
    .restart local v5       #curTokenIndex:I
    .restart local v20       #token:Lcom/android/server/wm/WindowToken;
    :cond_42f
    const/16 v29, 0x0

    goto/16 :goto_2f7

    .line 1772
    .restart local v6       #curWallpaperIndex:I
    .restart local v26       #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_433
    const/4 v11, 0x0

    goto/16 :goto_375

    .line 1780
    :cond_436
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    .line 1781
    .local v18, oldIndex:I
    if-ltz v18, :cond_451

    .line 1784
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1785
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1786
    move/from16 v0, v18

    if-ge v0, v10, :cond_451

    .line 1787
    add-int/lit8 v10, v10, -0x1

    .line 1797
    :cond_451
    move-object/from16 v0, v26

    invoke-virtual {v13, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1798
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1799
    or-int/lit8 v4, v4, 0x2

    .line 1800
    goto/16 :goto_30f

    .end local v6           #curWallpaperIndex:I
    .end local v18           #oldIndex:I
    .end local v20           #token:Lcom/android/server/wm/WindowToken;
    .end local v26           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_462
    move/from16 v29, v4

    .line 1803
    goto/16 :goto_102

    .line 1760
    .restart local v6       #curWallpaperIndex:I
    .restart local v20       #token:Lcom/android/server/wm/WindowToken;
    .restart local v26       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_466
    move-exception v29

    goto/16 :goto_34d
.end method

.method applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z
    .registers 9
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v3, 0x1

    .line 2945
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    if-ne v4, p3, :cond_a

    .line 3000
    :cond_9
    :goto_9
    return v3

    .line 2955
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_4b

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2956
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2957
    .local v1, anim:I
    const/4 v2, -0x1

    .line 2958
    .local v2, attr:I
    const/4 v0, 0x0

    .line 2959
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_37

    .line 2960
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2984
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_31

    .line 2993
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2994
    iput-boolean p3, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    .line 3000
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_31
    :goto_31
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    .line 2962
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_37
    sparse-switch p2, :sswitch_data_50

    .line 2976
    :goto_3a
    if-ltz v2, :cond_2a

    .line 2977
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2a

    .line 2964
    :sswitch_43
    const/4 v2, 0x0

    .line 2965
    goto :goto_3a

    .line 2967
    :sswitch_45
    const/4 v2, 0x1

    .line 2968
    goto :goto_3a

    .line 2970
    :sswitch_47
    const/4 v2, 0x2

    .line 2971
    goto :goto_3a

    .line 2973
    :sswitch_49
    const/4 v2, 0x3

    goto :goto_3a

    .line 2997
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_31

    .line 2962
    nop

    :sswitch_data_50
    .sparse-switch
        0x1001 -> :sswitch_43
        0x1003 -> :sswitch_47
        0x2002 -> :sswitch_45
        0x2004 -> :sswitch_49
    .end sparse-switch
.end method

.method applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 2934
    const/16 v0, 0x1003

    .line 2935
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_b

    .line 2936
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2937
    const/16 v0, 0x1001

    .line 2940
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 2941
    return-void
.end method

.method public canStatusBarHide()Z
    .registers 2

    .prologue
    .line 7167
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->canStatusBarHide()Z

    move-result v0

    return v0
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v1, 0x1

    .line 3159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 3172
    :cond_b
    :goto_b
    return v1

    .line 3163
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 3167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3171
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const/4 v1, 0x0

    goto :goto_b
.end method

.method checkDrawnWindowsLocked()V
    .registers 8

    .prologue
    const/16 v6, 0x18

    .line 8891
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_70

    .line 8892
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, j:I
    :goto_12
    if-ltz v0, :cond_70

    .line 8893
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 8894
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 8898
    .local v2, win:Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-nez v3, :cond_59

    .line 8901
    :cond_2a
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8903
    :try_start_44
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4c} :catch_73

    .line 8906
    :goto_4c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8907
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 8892
    :cond_56
    :goto_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 8908
    :cond_59
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    if-eqz v3, :cond_56

    .line 8911
    :try_start_5d
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_65} :catch_71

    .line 8914
    :goto_65
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8915
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_56

    .line 8919
    .end local v0           #j:I
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_70
    return-void

    .line 8912
    .restart local v0       #j:I
    .restart local v1       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :catch_71
    move-exception v3

    goto :goto_65

    .line 8904
    :catch_73
    move-exception v3

    goto :goto_4c
.end method

.method public clearForcedDisplaySize()V
    .registers 5

    .prologue
    .line 7159
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 7160
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    .line 7161
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_size_forced"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7163
    monitor-exit v1

    .line 7164
    return-void

    .line 7163
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 6
    .parameter "reason"

    .prologue
    .line 4633
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4634
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_21

    .line 4635
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4636
    .local v1, w:Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_23

    if-eqz v2, :cond_1e

    .line 4638
    :try_start_19
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_26

    .line 4634
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 4643
    .end local v1           #w:Lcom/android/server/wm/WindowState;
    :cond_21
    :try_start_21
    monitor-exit v3

    .line 4644
    return-void

    .line 4643
    .end local v0           #i:I
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v2

    .line 4639
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/wm/WindowState;
    :catch_26
    move-exception v2

    goto :goto_1e
.end method

.method computeForcedAppOrientationLocked()I
    .registers 3

    .prologue
    .line 3510
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 3511
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 3512
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 3514
    :cond_b
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .prologue
    .line 5868
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 5869
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5870
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_13

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v1, :cond_13

    .line 5872
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5873
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 5875
    :cond_13
    monitor-exit v2

    return-object v0

    .line 5876
    .end local v0           #config:Landroid/content/res/Configuration;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .registers 3

    .prologue
    .line 5880
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 5881
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 5882
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 5883
    const/4 v0, 0x0

    .line 5885
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_f
    return-object v0
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .registers 19
    .parameter "config"

    .prologue
    .line 6034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_8

    .line 6035
    const/4 v1, 0x0

    .line 6135
    :goto_7
    return v1

    .line 6038
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputManager;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 6041
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_171

    :cond_1f
    const/4 v2, 0x1

    .line 6043
    .local v2, rotated:Z
    :goto_20
    if-eqz v2, :cond_174

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6044
    .local v15, realdw:I
    :goto_26
    if-eqz v2, :cond_17a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6046
    .local v14, realdh:I
    :goto_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6047
    :try_start_31
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eqz v1, :cond_191

    .line 6048
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6049
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 6050
    if-le v15, v14, :cond_180

    .line 6052
    int-to-float v1, v14

    const v6, 0x3fa66666

    div-float/2addr v1, v6

    float-to-int v12, v1

    .line 6053
    .local v12, maxw:I
    if-ge v12, v15, :cond_4d

    .line 6054
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6067
    .end local v12           #maxw:I
    :cond_4d
    :goto_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_18e

    .line 6069
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6070
    .local v3, dw:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 6072
    .local v4, dh:I
    const/4 v13, 0x3

    .line 6073
    .local v13, orientation:I
    if-ge v3, v4, :cond_19b

    .line 6074
    const/4 v13, 0x1

    .line 6075
    const-string v1, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setLandscapeProperty(Ljava/lang/String;)V

    .line 6080
    :cond_61
    :goto_61
    move-object/from16 v0, p1

    iput v13, v0, Landroid/content/res/Configuration;->orientation:I

    .line 6083
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v5, v6, v0}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 6086
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 6087
    .local v9, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v8

    .line 6088
    .local v8, appWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v7

    .line 6089
    .local v7, appHeight:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6090
    :try_start_9d
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 6091
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 6092
    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_1a7

    .line 6097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v1, v9, v5, v6}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 6099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v9, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    .line 6102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 6104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 6106
    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->computeSmallestWidthAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V

    .line 6108
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 6109
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 6110
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3, v4}, Lcom/android/server/wm/WindowManagerService;->computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 6113
    const/4 v10, 0x0

    .line 6114
    .local v10, hardKeyboardAvailable:Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mForceDisableHardwareKeyboard:Z

    if-nez v1, :cond_12b

    .line 6115
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1aa

    const/4 v10, 0x1

    .line 6117
    :cond_12b
    :goto_12b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v10, v1, :cond_14b

    .line 6118
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 6119
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6124
    :cond_14b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-nez v1, :cond_156

    .line 6125
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 6131
    :cond_156
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 6132
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 6133
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 6134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    .line 6135
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 6041
    .end local v2           #rotated:Z
    .end local v3           #dw:I
    .end local v4           #dh:I
    .end local v7           #appHeight:I
    .end local v8           #appWidth:I
    .end local v9           #dm:Landroid/util/DisplayMetrics;
    .end local v10           #hardKeyboardAvailable:Z
    .end local v13           #orientation:I
    .end local v14           #realdh:I
    .end local v15           #realdw:I
    :cond_171
    const/4 v2, 0x0

    goto/16 :goto_20

    .line 6043
    .restart local v2       #rotated:Z
    :cond_174
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    goto/16 :goto_26

    .line 6044
    .restart local v15       #realdw:I
    :cond_17a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto/16 :goto_2c

    .line 6058
    .restart local v14       #realdh:I
    :cond_180
    int-to-float v1, v15

    const v6, 0x3fa66666

    div-float/2addr v1, v6

    float-to-int v11, v1

    .line 6059
    .local v11, maxh:I
    if-ge v11, v14, :cond_4d

    .line 6060
    :try_start_188
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    goto/16 :goto_4d

    .line 6067
    .end local v11           #maxh:I
    :catchall_18e
    move-exception v1

    monitor-exit v5
    :try_end_190
    .catchall {:try_start_188 .. :try_end_190} :catchall_18e

    throw v1

    .line 6064
    :cond_191
    :try_start_191
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6065
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I
    :try_end_199
    .catchall {:try_start_191 .. :try_end_199} :catchall_18e

    goto/16 :goto_4d

    .line 6076
    .restart local v3       #dw:I
    .restart local v4       #dh:I
    .restart local v13       #orientation:I
    :cond_19b
    if-le v3, v4, :cond_61

    .line 6077
    const/4 v13, 0x2

    .line 6078
    const-string v1, "1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setLandscapeProperty(Ljava/lang/String;)V

    goto/16 :goto_61

    .line 6092
    .restart local v7       #appHeight:I
    .restart local v8       #appWidth:I
    .restart local v9       #dm:Landroid/util/DisplayMetrics;
    :catchall_1a7
    move-exception v1

    :try_start_1a8
    monitor-exit v5
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1a7

    throw v1

    .line 6115
    .restart local v10       #hardKeyboardAvailable:Z
    :cond_1aa
    const/4 v10, 0x0

    goto :goto_12b
.end method

.method createWatermark()V
    .registers 10

    .prologue
    .line 9339
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v6, :cond_5

    .line 9365
    :cond_4
    :goto_4
    return-void

    .line 9343
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/etc/setup.conf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9344
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 9346
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_41
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_4a

    .line 9347
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_12
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9348
    .local v3, ind:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 9349
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_33

    .line 9350
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 9351
    .local v5, toks:[Ljava/lang/String;
    if-eqz v5, :cond_33

    array-length v6, v5

    if-lez v6, :cond_33

    .line 9352
    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7, v8, v5}, Lcom/android/server/wm/Watermark;-><init>(Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_55
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_33} :catch_5b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_33} :catch_58

    .line 9358
    .end local v5           #toks:[Ljava/lang/String;
    :cond_33
    if-eqz v2, :cond_38

    .line 9360
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_53

    :cond_38
    :goto_38
    move-object v1, v2

    .line 9364
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 9358
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catchall_3a
    move-exception v6

    :goto_3b
    if-eqz v1, :cond_40

    .line 9360
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_51

    .line 9358
    :cond_40
    :goto_40
    throw v6

    .line 9355
    :catch_41
    move-exception v6

    .line 9358
    :goto_42
    if-eqz v1, :cond_4

    .line 9360
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 9361
    :catch_48
    move-exception v6

    goto :goto_4

    .line 9356
    :catch_4a
    move-exception v6

    .line 9358
    :goto_4b
    if-eqz v1, :cond_4

    .line 9360
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_50} :catch_48

    goto :goto_4

    .line 9361
    :catch_51
    move-exception v7

    goto :goto_40

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #ind:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :catch_53
    move-exception v6

    goto :goto_38

    .line 9358
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catchall_55
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3b

    .line 9356
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_58
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4b

    .line 9355
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_5b
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_42
.end method

.method public detectSafeMode()Z
    .registers 4

    .prologue
    .line 6447
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v0

    if-nez v0, :cond_11

    .line 6449
    const-string v0, "WindowManager"

    const-string v1, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 6455
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 4553
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4555
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4558
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4559
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4560
    monitor-exit v1

    .line 4561
    return-void

    .line 4560
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public dismissKeyguard()V
    .registers 3

    .prologue
    .line 4623
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4625
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4627
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4628
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->dismissKeyguardLw()V

    .line 4629
    monitor-exit v1

    .line 4630
    return-void

    .line 4629
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public displayReady()V
    .registers 11

    .prologue
    .line 6459
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 6460
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_12

    .line 6461
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Display already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6483
    :catchall_f
    move-exception v0

    monitor-exit v9
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 6463
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 6464
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 6465
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 6466
    :try_start_25
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6467
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6468
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 6469
    .local v6, rot:I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_41

    const/4 v0, 0x3

    if-ne v6, v0, :cond_49

    .line 6472
    :cond_41
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6473
    .local v7, tmp:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6474
    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6476
    .end local v7           #tmp:I
    :cond_49
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6477
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6478
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_25 .. :try_end_5a} :catchall_90

    .line 6479
    :try_start_5a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->setDisplaySize(IIIII)V

    .line 6482
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    .line 6483
    monitor-exit v9
    :try_end_82
    .catchall {:try_start_5a .. :try_end_82} :catchall_f

    .line 6486
    :try_start_82
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_88} :catch_96

    .line 6490
    :goto_88
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6491
    :try_start_8b
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplaySizeLocked()V

    .line 6492
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_93

    .line 6493
    return-void

    .line 6478
    .end local v6           #rot:I
    :catchall_90
    move-exception v0

    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_f

    .line 6492
    .restart local v6       #rot:I
    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v0

    .line 6487
    :catch_96
    move-exception v0

    goto :goto_88
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 9831
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    .line 9833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9936
    :cond_33
    :goto_33
    return-void

    .line 9839
    :cond_34
    const/4 v6, 0x0

    .line 9841
    .local v6, dumpAll:Z
    const/4 v5, 0x0

    .line 9842
    .local v5, opti:I
    :goto_36
    array-length v0, p3

    if-ge v5, v0, :cond_4c

    .line 9843
    aget-object v7, p3, v5

    .line 9844
    .local v7, opt:Ljava/lang/String;
    if-eqz v7, :cond_4c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_67

    .line 9872
    .end local v7           #opt:Ljava/lang/String;
    :cond_4c
    array-length v0, p3

    if-ge v5, v0, :cond_19b

    .line 9873
    aget-object v3, p3, v5

    .line 9874
    .local v3, cmd:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 9875
    const-string v0, "input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "i"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 9876
    :cond_63
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    goto :goto_33

    .line 9847
    .end local v3           #cmd:Ljava/lang/String;
    .restart local v7       #opt:Ljava/lang/String;
    :cond_67
    add-int/lit8 v5, v5, 0x1

    .line 9848
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 9849
    const/4 v6, 0x1

    goto :goto_36

    .line 9850
    :cond_73
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 9851
    const-string v0, "Window manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9852
    const-string v0, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9853
    const-string v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9854
    const-string v0, "    i[input]: input subsystem state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9855
    const-string v0, "    p[policy]: policy state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9856
    const-string v0, "    s[essions]: active sessions"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9857
    const-string v0, "    t[okens]: token list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9858
    const-string v0, "    w[indows]: window list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9859
    const-string v0, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9860
    const-string v0, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9861
    const-string v0, "    Window hex object identifier, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9862
    const-string v0, "    \"all\" for all windows, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9863
    const-string v0, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9864
    const-string v0, "  -a: include all available server state."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 9867
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_36

    .line 9878
    .end local v7           #opt:Ljava/lang/String;
    .restart local v3       #cmd:Ljava/lang/String;
    :cond_e1
    const-string v0, "policy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    const-string v0, "p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 9879
    :cond_f1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9880
    const/4 v0, 0x1

    :try_start_f5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 9881
    monitor-exit v1

    goto/16 :goto_33

    :catchall_fb
    move-exception v0

    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_f5 .. :try_end_fd} :catchall_fb

    throw v0

    .line 9883
    :cond_fe
    const-string v0, "sessions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    const-string v0, "s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 9884
    :cond_10e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9885
    const/4 v0, 0x1

    :try_start_112
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9886
    monitor-exit v1

    goto/16 :goto_33

    :catchall_118
    move-exception v0

    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_112 .. :try_end_11a} :catchall_118

    throw v0

    .line 9888
    :cond_11b
    const-string v0, "tokens"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12b

    const-string v0, "t"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 9889
    :cond_12b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9890
    const/4 v0, 0x1

    :try_start_12f
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9891
    monitor-exit v1

    goto/16 :goto_33

    :catchall_135
    move-exception v0

    monitor-exit v1
    :try_end_137
    .catchall {:try_start_12f .. :try_end_137} :catchall_135

    throw v0

    .line 9893
    :cond_138
    const-string v0, "windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    const-string v0, "w"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 9894
    :cond_148
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9895
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_14d
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9896
    monitor-exit v1

    goto/16 :goto_33

    :catchall_153
    move-exception v0

    monitor-exit v1
    :try_end_155
    .catchall {:try_start_14d .. :try_end_155} :catchall_153

    throw v0

    .line 9898
    :cond_156
    const-string v0, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_166

    const-string v0, "a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 9899
    :cond_166
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9900
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_16b
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9901
    monitor-exit v1

    goto/16 :goto_33

    :catchall_171
    move-exception v0

    monitor-exit v1
    :try_end_173
    .catchall {:try_start_16b .. :try_end_173} :catchall_171

    throw v0

    :cond_174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 9905
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_33

    .line 9906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad window command, or no windows match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9907
    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 9913
    .end local v3           #cmd:Ljava/lang/String;
    :cond_19b
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9915
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9916
    if-eqz v6, :cond_1a8

    .line 9917
    :try_start_1a3
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9919
    :cond_1a8
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 9920
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9921
    if-eqz v6, :cond_1b5

    .line 9922
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9924
    :cond_1b5
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9925
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9926
    if-eqz v6, :cond_1c2

    .line 9927
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9929
    :cond_1c2
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9930
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9931
    if-eqz v6, :cond_1cf

    .line 9932
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9934
    :cond_1cf
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v6, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9935
    monitor-exit v1

    goto/16 :goto_33

    :catchall_1d6
    move-exception v0

    monitor-exit v1
    :try_end_1d8
    .catchall {:try_start_1a3 .. :try_end_1d8} :catchall_1d6

    throw v0
.end method

.method dumpAppTokensLocked()V
    .registers 5

    .prologue
    .line 4239
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_39

    .line 4240
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4242
    :cond_39
    return-void
.end method

.method dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 5
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    .line 9458
    const-string v0, "WINDOW MANAGER INPUT (dumpsys window input)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9459
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/InputManager;->dump(Ljava/io/PrintWriter;)V

    .line 9460
    return-void
.end method

.method dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"
    .parameter "dumpAll"

    .prologue
    .line 9463
    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9464
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9465
    return-void
.end method

.method dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 7
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    .line 9567
    const-string v2, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9568
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 9569
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9570
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 9571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .line 9572
    .local v1, s:Lcom/android/server/wm/Session;
    const-string v2, "  Session "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 9573
    const-string v2, "    "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_13

    .line 9576
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    .end local v1           #s:Lcom/android/server/wm/Session;
    :cond_32
    return-void
.end method

.method dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 10
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x3a

    .line 9468
    const-string v3, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9469
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_45

    .line 9470
    const-string v3, "  All tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9471
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9472
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 9473
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9474
    .local v2, token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Token "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9475
    if-eqz p3, :cond_41

    .line 9476
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9477
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_20

    .line 9479
    :cond_41
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_20

    .line 9483
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_45
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_86

    .line 9484
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9485
    const-string v3, "  Wallpaper tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9486
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_5d
    if-ltz v0, :cond_86

    .line 9487
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9488
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Wallpaper #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9489
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9490
    if-eqz p3, :cond_82

    .line 9491
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9492
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9486
    :goto_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5d

    .line 9494
    :cond_82
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_7f

    .line 9498
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_86
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b9

    .line 9499
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9500
    const-string v3, "  Application tokens in Z order:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9501
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_9e
    if-ltz v0, :cond_b9

    .line 9502
    const-string v3, "  App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9503
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9501
    add-int/lit8 v0, v0, -0x1

    goto :goto_9e

    .line 9506
    .end local v0           #i:I
    :cond_b9
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_fa

    .line 9507
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9508
    const-string v3, "  Finishing start of application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9509
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_d1
    if-ltz v0, :cond_fa

    .line 9510
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9511
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Finished Starting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9512
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9513
    if-eqz p3, :cond_f6

    .line 9514
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9515
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9509
    :goto_f3
    add-int/lit8 v0, v0, -0x1

    goto :goto_d1

    .line 9517
    :cond_f6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_f3

    .line 9521
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_fa
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13b

    .line 9522
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9523
    const-string v3, "  Exiting tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9524
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_112
    if-ltz v0, :cond_13b

    .line 9525
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9526
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9527
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9528
    if-eqz p3, :cond_137

    .line 9529
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9530
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9524
    :goto_134
    add-int/lit8 v0, v0, -0x1

    goto :goto_112

    .line 9532
    :cond_137
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_134

    .line 9536
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_13b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17c

    .line 9537
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9538
    const-string v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9539
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_153
    if-ltz v0, :cond_17c

    .line 9540
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9541
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9542
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9543
    if-eqz p3, :cond_178

    .line 9544
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9545
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9539
    :goto_175
    add-int/lit8 v0, v0, -0x1

    goto :goto_153

    .line 9547
    :cond_178
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_175

    .line 9551
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_17c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9552
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_191

    .line 9553
    const-string v3, "  mOpeningApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9555
    :cond_191
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a3

    .line 9556
    const-string v3, "  mClosingApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9558
    :cond_1a3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1b5

    .line 9559
    const-string v3, "  mToTopApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9561
    :cond_1b5
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c7

    .line 9562
    const-string v3, "  mToBottomApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9564
    :cond_1c7
    return-void
.end method

.method dumpWindows(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 13
    .parameter "fd"
    .parameter "pw"
    .parameter "name"
    .parameter "args"
    .parameter "opti"
    .parameter "dumpAll"

    .prologue
    .line 9787
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9788
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v4, "visible"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 9789
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9790
    :try_start_10
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_2c

    .line 9791
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9792
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    if-eqz v4, :cond_29

    .line 9793
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9790
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 9796
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_35

    .line 9819
    :goto_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_7c

    .line 9820
    const/4 v4, 0x0

    .line 9826
    :goto_34
    return v4

    .line 9796
    .end local v0           #i:I
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v4

    .line 9798
    :cond_38
    const/4 v1, 0x0

    .line 9801
    .local v1, objectId:I
    const/16 v4, 0x10

    :try_start_3b
    invoke-static {p3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3e} :catch_88

    move-result v1

    .line 9802
    const/4 p3, 0x0

    .line 9805
    :goto_40
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9806
    :try_start_43
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0       #i:I
    :goto_4b
    if-ltz v0, :cond_7a

    .line 9807
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9808
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_6d

    .line 9809
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 9810
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9806
    :cond_6a
    :goto_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4b

    .line 9812
    :cond_6d
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v1, :cond_6a

    .line 9813
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 9816
    .end local v0           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_77
    move-exception v4

    monitor-exit v5
    :try_end_79
    .catchall {:try_start_43 .. :try_end_79} :catchall_77

    throw v4

    .restart local v0       #i:I
    :cond_7a
    :try_start_7a
    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_77

    goto :goto_2d

    .line 9823
    .end local v1           #objectId:I
    :cond_7c
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9824
    :try_start_7f
    invoke-virtual {p0, p1, p2, p6, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9825
    monitor-exit v5

    .line 9826
    const/4 v4, 0x1

    goto :goto_34

    .line 9825
    :catchall_85
    move-exception v4

    monitor-exit v5
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_85

    throw v4

    .line 9803
    .end local v0           #i:I
    .restart local v1       #objectId:I
    :catch_88
    move-exception v4

    goto :goto_40
.end method

.method dumpWindowsLocked()V
    .registers 5

    .prologue
    .line 4245
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_35

    .line 4246
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4248
    :cond_35
    return-void
.end method

.method dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 12
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v4, 0x1

    const/16 v6, 0x20

    .line 9580
    const-string v3, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9581
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_10
    if-ltz v0, :cond_44

    .line 9582
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9583
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_22

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 9584
    :cond_22
    const-string v3, "  Window #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9585
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9586
    const-string v5, "    "

    if-nez p3, :cond_3b

    if-eqz p4, :cond_42

    :cond_3b
    move v3, v4

    :goto_3c
    invoke-virtual {v2, p2, v5, v3}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9581
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 9586
    :cond_42
    const/4 v3, 0x0

    goto :goto_3c

    .line 9589
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_44
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_81

    .line 9590
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9591
    const-string v3, "  Input method dialogs:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9592
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_5c
    if-ltz v0, :cond_81

    .line 9593
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9594
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_6e

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 9595
    :cond_6e
    const-string v3, "  IM Dialog #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9592
    :cond_7e
    add-int/lit8 v0, v0, -0x1

    goto :goto_5c

    .line 9599
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_81
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_cc

    .line 9600
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9601
    const-string v3, "  Remove pending for:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9602
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_99
    if-ltz v0, :cond_cc

    .line 9603
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9604
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_ab

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 9605
    :cond_ab
    const-string v3, "  Remove #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9606
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9607
    if-eqz p3, :cond_c8

    .line 9608
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9609
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9602
    :cond_c5
    :goto_c5
    add-int/lit8 v0, v0, -0x1

    goto :goto_99

    .line 9611
    :cond_c8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_c5

    .line 9616
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_cc
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v3, :cond_113

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_113

    .line 9617
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9618
    const-string v3, "  Windows force removing:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9619
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_e8
    if-ltz v0, :cond_113

    .line 9620
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9621
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    const-string v3, "  Removing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9622
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9623
    if-eqz p3, :cond_10f

    .line 9624
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9625
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9619
    :goto_10c
    add-int/lit8 v0, v0, -0x1

    goto :goto_e8

    .line 9627
    :cond_10f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_10c

    .line 9631
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_113
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15e

    .line 9632
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9633
    const-string v3, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9634
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_12b
    if-ltz v0, :cond_15e

    .line 9635
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9636
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_13d

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    .line 9637
    :cond_13d
    const-string v3, "  Destroy #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9638
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9639
    if-eqz p3, :cond_15a

    .line 9640
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9641
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9634
    :cond_157
    :goto_157
    add-int/lit8 v0, v0, -0x1

    goto :goto_12b

    .line 9643
    :cond_15a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_157

    .line 9648
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_15e
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a9

    .line 9649
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9650
    const-string v3, "  Windows losing focus:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9651
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_176
    if-ltz v0, :cond_1a9

    .line 9652
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9653
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_188

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 9654
    :cond_188
    const-string v3, "  Losing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9655
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9656
    if-eqz p3, :cond_1a5

    .line 9657
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9658
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9651
    :cond_1a2
    :goto_1a2
    add-int/lit8 v0, v0, -0x1

    goto :goto_176

    .line 9660
    :cond_1a5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1a2

    .line 9665
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1a9
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1f4

    .line 9666
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9667
    const-string v3, "  Windows waiting to resize:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9668
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1c1
    if-ltz v0, :cond_1f4

    .line 9669
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9670
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_1d3

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ed

    .line 9671
    :cond_1d3
    const-string v3, "  Resizing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9672
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9673
    if-eqz p3, :cond_1f0

    .line 9674
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9675
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9668
    :cond_1ed
    :goto_1ed
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c1

    .line 9677
    :cond_1f0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1ed

    .line 9682
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1f4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_233

    .line 9683
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9684
    const-string v3, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9685
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_20c
    if-ltz v0, :cond_233

    .line 9686
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 9687
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    const-string v3, "  Waiting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9688
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9685
    add-int/lit8 v0, v0, -0x1

    goto :goto_20c

    .line 9691
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_233
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9692
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_4a7

    .line 9693
    const-string v3, "  Display: init="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9694
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " base="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9695
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9696
    const-string v3, " cur="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9697
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9698
    const-string v3, " app="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9699
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9700
    const-string v3, " raw="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawWidth()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9701
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9705
    :goto_2a6
    const-string v3, "  mCurConfiguration="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9706
    const-string v3, "  mCurrentFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9707
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v3, v4, :cond_2ca

    .line 9708
    const-string v3, "  mLastFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9710
    :cond_2ca
    const-string v3, "  mFocusedApp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9711
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_2e2

    .line 9712
    const-string v3, "  mInputMethodTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9714
    :cond_2e2
    const-string v3, "  mInTouchMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9715
    const-string v3, " mLayoutSeq="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9716
    if-eqz p3, :cond_4a6

    .line 9717
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v3, :cond_30a

    .line 9718
    const-string v3, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9719
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9721
    :cond_30a
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_318

    .line 9722
    const-string v3, "  mInputMethodWindow="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9724
    :cond_318
    const-string v3, "  mWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9725
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_33e

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_33e

    .line 9726
    const-string v3, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9727
    const-string v3, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9729
    :cond_33e
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_34c

    .line 9730
    const-string v3, "  mWindowDetachedWallpaper="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9732
    :cond_34c
    const-string v3, "  mLastWallpaperX="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 9733
    const-string v3, " mLastWallpaperY="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 9734
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    if-nez v3, :cond_368

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    if-eqz v3, :cond_37c

    .line 9736
    :cond_368
    const-string v3, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9737
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9738
    const-string v3, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9739
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9741
    :cond_37c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v3, :cond_38c

    .line 9742
    const-string v3, "  mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9743
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    const-string v4, "    "

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9745
    :cond_38c
    const-string v3, "  mSystemBooted="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9746
    const-string v3, " mDisplayEnabled="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9747
    const-string v3, "  mLayoutNeeded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9748
    const-string v3, " mBlurShown="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9749
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v3, :cond_4ae

    .line 9750
    const-string v3, "  mDimAnimator:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9751
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    const-string v4, "    "

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9755
    :goto_3c4
    const-string v3, "  mDisplayFrozen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9756
    const-string v3, " mWindowsFreezingScreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9757
    const-string v3, " mAppsFreezingScreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9758
    const-string v3, " mWaitingForConfig="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9759
    const-string v3, "  mRotation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9760
    const-string v3, " mAltOrientation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9761
    const-string v3, "  mLastWindowForcedOrientation"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9762
    const-string v3, " mForcedAppOrientation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9763
    const-string v3, "  mDeferredRotationPauseCount="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9764
    const-string v3, "  mAnimationPending="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9765
    const-string v3, " mWindowAnimationScale="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 9766
    const-string v3, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 9767
    const-string v3, "  mNextAppTransition=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9768
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9769
    const-string v3, " mAppTransitionReady="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9770
    const-string v3, "  mAppTransitionRunning="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9771
    const-string v3, " mAppTransitionTimeout="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9772
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v3, :cond_492

    .line 9773
    const-string v3, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9774
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9775
    const-string v3, " mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9776
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9777
    const-string v3, " mNextAppTransitionExit=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9778
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9780
    :cond_492
    const-string v3, "  mStartingIconInTransition="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9781
    const-string v3, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9783
    :cond_4a6
    return-void

    .line 9703
    :cond_4a7
    const-string v3, "  NO DISPLAY"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2a6

    .line 9753
    :cond_4ae
    const-string v3, "  no DimAnimator "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3c4
.end method

.method public enableScreenAfterBoot()V
    .registers 6

    .prologue
    .line 4806
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4815
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_9

    .line 4816
    monitor-exit v2

    .line 4829
    :goto_8
    return-void

    .line 4818
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 4819
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    .line 4822
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4823
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4824
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_28

    .line 4826
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->systemBooted()V

    .line 4828
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_8

    .line 4824
    .end local v0           #msg:Landroid/os/Message;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .registers 4

    .prologue
    .line 4840
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    .line 4847
    :cond_4
    :goto_4
    return-void

    .line 4843
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_4

    .line 4846
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public executeAppTransition()V
    .registers 6

    .prologue
    .line 3645
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3647
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3650
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3657
    :try_start_15
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_27

    .line 3658
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 3659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3660
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3661
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3663
    .end local v0           #origId:J
    :cond_27
    monitor-exit v3

    .line 3664
    return-void

    .line 3663
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 4595
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4597
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4599
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4608
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 4
    .parameter "token"

    .prologue
    .line 3176
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 3177
    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_c

    .line 3178
    const/4 v1, 0x0

    .line 3180
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_b
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .registers 15
    .parameter "willMove"

    .prologue
    .line 1090
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 1091
    .local v5, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1092
    .local v0, N:I
    const/4 v8, 0x0

    .line 1093
    .local v8, w:Lcom/android/server/wm/WindowState;
    move v4, v0

    .line 1094
    .local v4, i:I
    :cond_8
    if-lez v4, :cond_3a

    .line 1095
    add-int/lit8 v4, v4, -0x1

    .line 1096
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/wm/WindowState;
    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 1100
    .restart local v8       #w:Lcom/android/server/wm/WindowState;
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1108
    if-nez p1, :cond_3a

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3a

    if-lez v4, :cond_3a

    .line 1111
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 1112
    .local v9, wb:Lcom/android/server/wm/WindowState;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v11, v12, :cond_3a

    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 1113
    add-int/lit8 v4, v4, -0x1

    .line 1114
    move-object v8, v9

    .line 1129
    .end local v9           #wb:Lcom/android/server/wm/WindowState;
    :cond_3a
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_5c

    if-eqz v8, :cond_5c

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v11

    if-eqz v11, :cond_5c

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v11, :cond_5c

    .line 1132
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_5c

    .line 1133
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1134
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1142
    :cond_5c
    if-eqz p1, :cond_b9

    if-eqz v8, :cond_b9

    .line 1143
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1144
    .local v1, curTarget:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_b9

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_b9

    .line 1150
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1151
    .local v7, token:Lcom/android/server/wm/AppWindowToken;
    const/4 v3, 0x0

    .line 1152
    .local v3, highestTarget:Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 1153
    .local v2, highestPos:I
    iget-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-nez v11, :cond_74

    iget-object v11, v7, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_85

    .line 1154
    :cond_74
    const/4 v6, 0x0

    .line 1155
    .local v6, pos:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1156
    :goto_79
    if-ltz v6, :cond_85

    .line 1157
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 1158
    .local v10, win:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, v7, :cond_94

    .line 1172
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_85
    if-eqz v3, :cond_b9

    .line 1179
    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a5

    .line 1182
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1183
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1184
    add-int/lit8 v11, v2, 0x1

    .line 1234
    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :goto_93
    return v11

    .line 1161
    .restart local v1       #curTarget:Lcom/android/server/wm/WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/wm/WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/wm/AppWindowToken;
    .restart local v10       #win:Lcom/android/server/wm/WindowState;
    :cond_94
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v11, :cond_a2

    .line 1162
    if-eqz v3, :cond_a0

    iget v11, v10, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_a2

    .line 1164
    :cond_a0
    move-object v3, v10

    .line 1165
    move v2, v6

    .line 1168
    :cond_a2
    add-int/lit8 v6, v6, -0x1

    .line 1169
    goto :goto_79

    .line 1185
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_a5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_b9

    iget v11, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_b9

    .line 1191
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1192
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1193
    add-int/lit8 v11, v2, 0x1

    goto :goto_93

    .line 1200
    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_b9
    if-eqz v8, :cond_d5

    .line 1201
    if-eqz p1, :cond_cd

    .line 1211
    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1212
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1213
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_d0

    .line 1214
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v11, v11, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1219
    :cond_cd
    :goto_cd
    add-int/lit8 v11, v4, 0x1

    goto :goto_93

    .line 1216
    :cond_d0
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_cd

    .line 1221
    :cond_d5
    if-eqz p1, :cond_de

    .line 1231
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1232
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1234
    :cond_de
    const/4 v11, -0x1

    goto :goto_93
.end method

.method public finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 9
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2877
    .local v0, origId:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2878
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2879
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->finishDrawingLocked()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2880
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v3, v5

    if-eqz v3, :cond_20

    .line 2881
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2883
    :cond_20
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2884
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2886
    :cond_26
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2b

    .line 2887
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2888
    return-void

    .line 2886
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public freezeRotation(I)V
    .registers 5
    .parameter "rotation"

    .prologue
    const/4 v2, -0x1

    .line 5228
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 5230
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5232
    :cond_13
    if-lt p1, v2, :cond_18

    const/4 v0, 0x3

    if-le p1, v0, :cond_20

    .line 5233
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5239
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    if-ne p1, v2, :cond_27

    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .end local p1
    :cond_27
    invoke-interface {v0, v1, p1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    .line 5241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5242
    return-void
.end method

.method public getAnimationScale(I)F
    .registers 3
    .parameter "which"

    .prologue
    .line 4690
    packed-switch p1, :pswitch_data_c

    .line 4694
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 4691
    :pswitch_5
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_4

    .line 4692
    :pswitch_8
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_4

    .line 4690
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .registers 4

    .prologue
    .line 4698
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .registers 5
    .parameter "token"

    .prologue
    .line 3548
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3549
    :try_start_3
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3550
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_10

    .line 3551
    const/4 v1, -0x1

    monitor-exit v2

    .line 3554
    :goto_f
    return v1

    :cond_10
    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_f

    .line 3555
    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getDPadKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4774
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4776
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4778
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4742
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4744
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4746
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDisplaySize(Landroid/graphics/Point;)V
    .registers 4
    .parameter "size"

    .prologue
    .line 7016
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7017
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7018
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7019
    monitor-exit v1

    .line 7020
    return-void

    .line 7019
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getInitialDisplaySize(Landroid/graphics/Point;)V
    .registers 4
    .parameter "size"

    .prologue
    .line 7030
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7031
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7032
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7033
    monitor-exit v1

    .line 7034
    return-void

    .line 7033
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 3
    .parameter "deviceId"

    .prologue
    .line 4798
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .registers 2

    .prologue
    .line 4802
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4750
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4752
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4754
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4758
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4760
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4762
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getMaximumSizeDimension()I
    .registers 4

    .prologue
    .line 7037
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7039
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    if-le v0, v2, :cond_d

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    :goto_b
    monitor-exit v1

    return v0

    :cond_d
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto :goto_b

    .line 7041
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .registers 12

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x3

    .line 3350
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 3351
    .local v6, pos:I
    const/4 v0, 0x0

    .line 3352
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 3353
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 3354
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 3355
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 3356
    .local v3, lastFullscreen:Z
    :cond_f
    :goto_f
    if-ltz v6, :cond_52

    .line 3357
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 3358
    .local v7, wtoken:Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 3364
    if-nez v1, :cond_25

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v8, :cond_25

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_f

    .line 3371
    :cond_25
    if-nez v2, :cond_3d

    .line 3373
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_f

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_f

    .line 3378
    const/4 v2, 0x1

    .line 3379
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3380
    iget v4, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3394
    :cond_34
    iget v5, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3398
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    .line 3399
    if-eqz v3, :cond_47

    if-eq v5, v10, :cond_47

    .line 3416
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3c
    :goto_3c
    return v5

    .line 3381
    .restart local v7       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3d
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_34

    .line 3387
    if-eq v4, v10, :cond_34

    if-eqz v3, :cond_34

    move v5, v4

    .line 3391
    goto :goto_3c

    .line 3407
    .restart local v5       #or:I
    :cond_47
    if-eq v5, v9, :cond_4b

    if-ne v5, v10, :cond_3c

    .line 3413
    :cond_4b
    if-ne v5, v10, :cond_50

    const/4 v8, 0x1

    :goto_4e
    or-int/2addr v1, v8

    .line 3414
    goto :goto_f

    .line 3413
    :cond_50
    const/4 v8, 0x0

    goto :goto_4e

    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_52
    move v5, v9

    .line 3416
    goto :goto_3c
.end method

.method public getOrientationFromWindowsLocked()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 3317
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_15

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 3323
    :cond_15
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    .line 3346
    :goto_17
    return v1

    .line 3326
    :cond_18
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 3327
    .local v0, pos:I
    :cond_20
    if-ltz v0, :cond_4a

    .line 3328
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3329
    .local v2, wtoken:Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 3330
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_34

    .line 3333
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_17

    .line 3335
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v4, :cond_20

    .line 3338
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3339
    .local v1, req:I
    if-eq v1, v3, :cond_20

    const/4 v4, 0x3

    if-eq v1, v4, :cond_20

    .line 3343
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    goto :goto_17

    .line 3346
    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/wm/WindowState;
    :cond_4a
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_17
.end method

.method public getPendingAppTransition()I
    .registers 2

    .prologue
    .line 3632
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .registers 8

    .prologue
    const/16 v2, 0x55

    const/16 v3, 0x53

    const/16 v1, 0x51

    .line 5475
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5476
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    .line 5478
    .local v0, rotation:I
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_23

    .line 5480
    packed-switch v0, :pswitch_data_30

    .line 5483
    monitor-exit v4

    .line 5502
    :goto_17
    return v1

    .line 5485
    :pswitch_18
    monitor-exit v4

    move v1, v2

    goto :goto_17

    .line 5487
    :pswitch_1b
    monitor-exit v4

    goto :goto_17

    .line 5505
    .end local v0           #rotation:I
    :catchall_1d
    move-exception v1

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v1

    .line 5489
    .restart local v0       #rotation:I
    :pswitch_20
    :try_start_20
    monitor-exit v4

    move v1, v3

    goto :goto_17

    .line 5493
    :cond_23
    packed-switch v0, :pswitch_data_3a

    .line 5496
    monitor-exit v4

    move v1, v2

    goto :goto_17

    .line 5498
    :pswitch_29
    monitor-exit v4

    goto :goto_17

    .line 5500
    :pswitch_2b
    monitor-exit v4

    move v1, v3

    goto :goto_17

    .line 5502
    :pswitch_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_1d

    goto :goto_17

    .line 5480
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1b
        :pswitch_20
    .end packed-switch

    .line 5493
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public getRealDisplaySize(Landroid/graphics/Point;)V
    .registers 4
    .parameter "size"

    .prologue
    .line 7023
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7024
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7025
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7026
    monitor-exit v1

    .line 7027
    return-void

    .line 7026
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 5424
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4718
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4720
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4722
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4726
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4728
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4730
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4702
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4704
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4706
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4710
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4712
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4714
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4766
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4768
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4770
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4734
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4736
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4738
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getWindowCompatibilityScale(Landroid/os/IBinder;)F
    .registers 5
    .parameter "windowToken"

    .prologue
    .line 2891
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2892
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 2893
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    :goto_f
    monitor-exit v2

    return v1

    :cond_11
    const/high16 v1, 0x3f80

    goto :goto_f

    .line 2894
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 2460
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2461
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2462
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_f

    .line 2463
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2464
    monitor-exit v2

    .line 2468
    :goto_e
    return-void

    .line 2466
    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2467
    monitor-exit v2

    goto :goto_e

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public hasKeys([I[Z)Z
    .registers 6
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 4782
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/InputManager;->hasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .prologue
    .line 9450
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessagesLocked()V
    .registers 2

    .prologue
    .line 5004
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_c

    .line 5005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 5006
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideBootMessages()V

    .line 5008
    :cond_c
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 2

    .prologue
    .line 4611
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public injectInputEventNoWait(Landroid/view/InputEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    .line 6392
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6393
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6394
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6396
    .local v6, ident:J
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v4, 0x0

    const/16 v5, 0x7530

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6400
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6401
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 28
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6288
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 6289
    .local v3, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 6291
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 6292
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 6293
    .local v8, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 6294
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    .line 6295
    .local v10, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    .line 6296
    .local v11, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    .line 6297
    .local v12, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    .line 6298
    .local v14, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    .line 6300
    .local v21, flags:I
    if-nez v14, :cond_2c

    .line 6301
    const/16 v14, 0x101

    .line 6304
    :cond_2c
    const-wide/16 v15, 0x0

    cmp-long v13, v5, v15

    if-nez v13, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 6305
    :cond_36
    const-wide/16 v15, 0x0

    cmp-long v13, v3, v15

    if-nez v13, :cond_3d

    move-wide v3, v5

    .line 6307
    :cond_3d
    new-instance v2, Landroid/view/KeyEvent;

    or-int/lit8 v13, v21, 0x8

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 6310
    .local v2, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 6311
    .local v17, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 6312
    .local v18, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 6314
    .local v22, ident:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_6c

    const/16 v19, 0x2

    :goto_58
    const/16 v20, 0x7530

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v24

    .line 6319
    .local v24, result:I
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6320
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v13

    return v13

    .line 6314
    .end local v24           #result:I
    :cond_6c
    const/16 v19, 0x1

    goto :goto_58
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6335
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6336
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6337
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6339
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 6340
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1d

    .line 6341
    const/16 v0, 0x1002

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 6344
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_30

    const/4 v4, 0x2

    :goto_22
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6349
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6350
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 6344
    .end local v8           #result:I
    :cond_30
    const/4 v4, 0x1

    goto :goto_22
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6365
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6366
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6367
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6369
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 6370
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1e

    .line 6371
    const v0, 0x10004

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 6374
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_31

    const/4 v4, 0x2

    :goto_23
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6379
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6380
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 6374
    .end local v8           #result:I
    :cond_31
    const/4 v4, 0x1

    goto :goto_23
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 11
    .parameter "client"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6961
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 6964
    const/4 v7, 0x0

    :try_start_6
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v1

    .line 6966
    .local v1, idx:I
    if-lez v1, :cond_75

    .line 6967
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6971
    .local v2, imFocus:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_75

    .line 6974
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3b

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3b

    .line 6978
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3b

    .line 6979
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6980
    .local v3, w:Lcom/android/server/wm/WindowState;
    if-eq v3, v2, :cond_51

    .line 6982
    move-object v2, v3

    .line 6992
    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_3b
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_54

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_54

    .line 6994
    monitor-exit v6

    .line 7012
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :goto_50
    return v4

    .line 6978
    .restart local v0       #i:I
    .restart local v2       #imFocus:Lcom/android/server/wm/WindowState;
    .restart local v3       #w:Lcom/android/server/wm/WindowState;
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 7005
    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_54
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_75

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_75

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_75

    .line 7007
    monitor-exit v6

    goto :goto_50

    .line 7011
    .end local v1           #idx:I
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :catchall_72
    move-exception v4

    monitor-exit v6
    :try_end_74
    .catchall {:try_start_6 .. :try_end_74} :catchall_72

    throw v4

    .restart local v1       #idx:I
    :cond_75
    :try_start_75
    monitor-exit v6
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_72

    move v4, v5

    .line 7012
    goto :goto_50
.end method

.method public isHardKeyboardAvailable()Z
    .registers 3

    .prologue
    .line 6139
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6140
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v1

    return v0

    .line 6141
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isHardKeyboardEnabled()Z
    .registers 3

    .prologue
    .line 6145
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6146
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v1

    return v0

    .line 6147
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 4615
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 4619
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public isViewServerRunning()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 5587
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5595
    :cond_7
    :goto_7
    return v0

    .line 5591
    :cond_8
    const-string v1, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5595
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .parameter "wallpaperTarget"

    .prologue
    .line 1480
    if-eqz p1, :cond_10

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public lockNow()V
    .registers 2

    .prologue
    .line 9454
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->lockNow()V

    .line 9455
    return-void
.end method

.method logWindowList(Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"

    .prologue
    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1320
    .local v0, N:I
    :goto_6
    if-lez v0, :cond_37

    .line 1321
    add-int/lit8 v0, v0, -0x1

    .line 1322
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1324
    :cond_37
    return-void
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .parameter "w"

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x1

    .line 7538
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_29

    .line 7541
    :cond_f
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 7542
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_29

    .line 7543
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 7546
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7547
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7551
    :cond_29
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 9940
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_9

    .line 9941
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    :try_start_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_c

    .line 9942
    return-void

    .line 9940
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0

    .line 9941
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 4
    .parameter "inputChannelName"

    .prologue
    .line 4786
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "monitorInput()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4788
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4790
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .registers 10
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4346
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4348
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4351
    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4354
    :try_start_15
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4358
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_23

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 4359
    :cond_23
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    monitor-exit v4

    .line 4386
    :goto_4c
    return-void

    .line 4363
    :cond_4d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4371
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 4374
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    .line 4377
    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4379
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4380
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4381
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4382
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4384
    :cond_79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4385
    monitor-exit v4

    goto :goto_4c

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_7e
    move-exception v3

    monitor-exit v4
    :try_end_80
    .catchall {:try_start_15 .. :try_end_80} :catchall_7e

    throw v3
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v8, -0x1

    .line 4498
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 4500
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4503
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4504
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4505
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4507
    .local v0, N:I
    const/4 v4, 0x0

    .line 4508
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v0, :cond_54

    .line 4509
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 4510
    .local v5, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_51

    .line 4513
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4514
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_4f

    .line 4515
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4516
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4517
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4518
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->sendingToTop:Z

    .line 4519
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 4521
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    .line 4508
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 4525
    .end local v5           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_54
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_5c

    .line 4526
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4528
    :cond_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_1a .. :try_end_5d} :catchall_61

    .line 4529
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4530
    return-void

    .line 4528
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_61
    move-exception v6

    :try_start_62
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v7, -0x1

    .line 4465
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 4467
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4470
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4471
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4472
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4473
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4474
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v0, :cond_51

    .line 4475
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 4476
    .local v4, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v4, :cond_4e

    .line 4479
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4480
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_4e

    .line 4481
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4482
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4483
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4484
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 4485
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->sendingToTop:Z

    .line 4474
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 4490
    .end local v4           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_51
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_5e

    .line 4491
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4493
    :cond_5e
    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_1a .. :try_end_5f} :catchall_63

    .line 4494
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4495
    return-void

    .line 4493
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_63
    move-exception v5

    :try_start_64
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .registers 9
    .parameter "pos"

    .prologue
    .line 1327
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1329
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1331
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 1332
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 1331
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1339
    :cond_16
    if-ltz p1, :cond_44

    .line 1340
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1341
    .local v3, targetAppToken:Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_32

    .line 1342
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1343
    .local v5, wp:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v6, :cond_32

    .line 1344
    add-int/lit8 p1, p1, 0x1

    .line 1348
    .end local v5           #wp:Lcom/android/server/wm/WindowState;
    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_56

    .line 1349
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1350
    .local v4, win:Lcom/android/server/wm/WindowState;
    iput-object v3, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1351
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 1348
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1359
    .end local v3           #targetAppToken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_56

    .line 1360
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1361
    .restart local v4       #win:Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1362
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1359
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 1368
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_56
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .registers 14
    .parameter "needAssignLayers"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 1371
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1372
    .local v6, imWin:Lcom/android/server/wm/WindowState;
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1373
    .local v0, DN:I
    if-nez v6, :cond_12

    if-nez v0, :cond_12

    move v8, v9

    .line 1466
    :goto_11
    return v8

    .line 1377
    :cond_12
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1378
    .local v5, imPos:I
    if-ltz v5, :cond_99

    .line 1384
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1385
    .local v1, N:I
    if-ge v5, v1, :cond_29

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v4, v8

    .line 1390
    .local v4, firstImWin:Lcom/android/server/wm/WindowState;
    :cond_29
    if-eqz v6, :cond_67

    move-object v2, v6

    .line 1392
    .local v2, baseImWin:Lcom/android/server/wm/WindowState;
    :goto_2c
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_41

    .line 1393
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1394
    .local v3, cw:Lcom/android/server/wm/WindowState;
    iget v8, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v8, :cond_41

    move-object v2, v3

    .line 1397
    .end local v3           #cw:Lcom/android/server/wm/WindowState;
    :cond_41
    if-ne v4, v2, :cond_77

    .line 1400
    add-int/lit8 v7, v5, 0x1

    .line 1401
    .local v7, pos:I
    :goto_45
    if-ge v7, v1, :cond_53

    .line 1402
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_71

    .line 1407
    :cond_53
    add-int/lit8 v7, v7, 0x1

    .line 1409
    :goto_55
    if-ge v7, v1, :cond_63

    .line 1410
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_74

    .line 1415
    :cond_63
    if-lt v7, v1, :cond_77

    move v8, v9

    .line 1417
    goto :goto_11

    .line 1390
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v7           #pos:I
    :cond_67
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v2, v8

    goto :goto_2c

    .line 1405
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v7       #pos:I
    :cond_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 1413
    :cond_74
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 1421
    .end local v7           #pos:I
    :cond_77
    if-eqz v6, :cond_95

    .line 1426
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v5

    .line 1431
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v8, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1432
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1437
    if-lez v0, :cond_8d

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1462
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_8d
    :goto_8d
    if-eqz p1, :cond_92

    .line 1463
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_92
    move v8, v10

    .line 1466
    goto/16 :goto_11

    .line 1439
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_95
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8d

    .line 1446
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_99
    if-eqz v6, :cond_a9

    .line 1448
    invoke-direct {p0, v9, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1449
    iput-object v4, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1450
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1455
    if-lez v0, :cond_8d

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8d

    .line 1457
    :cond_a9
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8d
.end method

.method notifyHardKeyboardStatusChange()V
    .registers 6

    .prologue
    .line 6169
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6170
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .line 6171
    .local v2, listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 6172
    .local v0, available:Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6173
    .local v1, enabled:Z
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    .line 6174
    if-eqz v2, :cond_f

    .line 6175
    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(ZZ)V

    .line 6177
    :cond_f
    return-void

    .line 6173
    .end local v0           #available:Z
    .end local v1           #enabled:Z
    .end local v2           #listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    :catchall_10
    move-exception v3

    :try_start_11
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v3
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 815
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 816
    :catch_5
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 820
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    :cond_11
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .registers 6
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 6954
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6955
    :cond_a
    if-nez p2, :cond_14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6956
    :cond_14
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .line 6957
    .local v0, session:Lcom/android/server/wm/Session;
    return-object v0
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .registers 9
    .parameter "session"
    .parameter "client"

    .prologue
    const/4 v3, 0x0

    .line 2860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2863
    .local v0, origId:J
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_20

    .line 2864
    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2865
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_14

    .line 2866
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1d

    .line 2871
    :goto_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2868
    return v3

    :cond_14
    :try_start_14
    const-string v3, "from-client"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v4

    goto :goto_10

    .line 2869
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 2871
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .registers 6
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3637
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 3638
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 3639
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    .line 3640
    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    .line 3642
    :cond_b
    return-void
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 6239
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 6241
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6244
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6245
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 6246
    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_24

    .line 6247
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 6249
    :cond_24
    monitor-exit v2

    .line 6250
    return-void

    .line 6249
    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v1
.end method

.method pauseRotationLocked()V
    .registers 2

    .prologue
    .line 5280
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 5281
    return-void
.end method

.method public performBootTimeout()V
    .registers 4

    .prologue
    .line 4850
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4851
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_9

    .line 4852
    monitor-exit v1

    .line 4858
    :goto_8
    return-void

    .line 4854
    :cond_9
    const-string v0, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 4856
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 4857
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_8

    .line 4856
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 8
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2847
    .local v0, origId:J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1b

    .line 2848
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2849
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_13

    .line 2850
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_18

    .line 2855
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2857
    return-void

    .line 2852
    :cond_13
    :try_start_13
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->destroyDeferredSurfaceLocked()V

    .line 2853
    monitor-exit v4

    goto :goto_f

    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_18
    move-exception v3

    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    .line 2855
    :catchall_1b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public performEnableScreen()V
    .registers 16

    .prologue
    .line 4861
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4870
    :try_start_3
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v11, :cond_9

    .line 4871
    monitor-exit v12

    .line 4962
    :goto_8
    return-void

    .line 4873
    :cond_9
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v11, :cond_16

    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v11, :cond_16

    .line 4874
    monitor-exit v12

    goto :goto_8

    .line 4956
    :catchall_13
    move-exception v11

    monitor-exit v12
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v11

    .line 4877
    :cond_16
    :try_start_16
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v11, :cond_9e

    .line 4880
    const/4 v4, 0x0

    .line 4881
    .local v4, haveBootMsg:Z
    const/4 v3, 0x0

    .line 4882
    .local v3, haveApp:Z
    const/4 v6, 0x0

    .line 4883
    .local v6, haveWallpaper:Z
    const/4 v5, 0x1

    .line 4884
    .local v5, haveKeyguard:Z
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4885
    .local v0, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_25
    if-ge v7, v0, :cond_88

    .line 4886
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 4887
    .local v10, w:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-ne v11, v13, :cond_43

    .line 4895
    iget v11, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v11, :cond_55

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v11, :cond_55

    const/4 v9, 0x1

    .line 4897
    .local v9, vis:Z
    :goto_40
    if-nez v9, :cond_57

    const/4 v5, 0x1

    .line 4899
    .end local v9           #vis:Z
    :cond_43
    :goto_43
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    if-eqz v11, :cond_59

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v11, :cond_59

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v11

    if-nez v11, :cond_59

    .line 4900
    monitor-exit v12

    goto :goto_8

    .line 4895
    :cond_55
    const/4 v9, 0x0

    goto :goto_40

    .line 4897
    .restart local v9       #vis:Z
    :cond_57
    const/4 v5, 0x0

    goto :goto_43

    .line 4902
    .end local v9           #vis:Z
    :cond_59
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v11

    if-eqz v11, :cond_68

    .line 4903
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7e5

    if-ne v11, v13, :cond_6b

    .line 4904
    const/4 v4, 0x1

    .line 4885
    :cond_68
    :goto_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 4905
    :cond_6b
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_74

    .line 4906
    const/4 v3, 0x1

    goto :goto_68

    .line 4907
    :cond_74
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dd

    if-ne v11, v13, :cond_7e

    .line 4908
    const/4 v6, 0x1

    goto :goto_68

    .line 4909
    :cond_7e
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-ne v11, v13, :cond_68

    .line 4910
    const/4 v5, 0x1

    goto :goto_68

    .line 4923
    .end local v10           #w:Lcom/android/server/wm/WindowState;
    :cond_88
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v11, :cond_91

    if-nez v4, :cond_91

    .line 4924
    monitor-exit v12

    goto/16 :goto_8

    .line 4930
    :cond_91
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v11, :cond_9e

    if-nez v3, :cond_99

    if-eqz v5, :cond_9b

    :cond_99
    if-nez v6, :cond_9e

    .line 4931
    :cond_9b
    monitor-exit v12

    goto/16 :goto_8

    .line 4935
    .end local v0           #N:I
    .end local v3           #haveApp:Z
    .end local v4           #haveBootMsg:Z
    .end local v5           #haveKeyguard:Z
    .end local v6           #haveWallpaper:Z
    .end local v7           #i:I
    :cond_9e
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_a1
    .catchall {:try_start_16 .. :try_end_a1} :catchall_13

    .line 4944
    :try_start_a1
    const-string v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 4945
    .local v8, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v8, :cond_bb

    .line 4947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4948
    .local v1, data:Landroid/os/Parcel;
    const-string v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4949
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v8, v11, v1, v13, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_bb
    .catchall {:try_start_a1 .. :try_end_bb} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_bb} :catch_c7

    .line 4956
    .end local v1           #data:Landroid/os/Parcel;
    .end local v8           #surfaceFlinger:Landroid/os/IBinder;
    :cond_bb
    :goto_bb
    :try_start_bb
    monitor-exit v12
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_13

    .line 4958
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 4961
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    goto/16 :goto_8

    .line 4953
    :catch_c7
    move-exception v2

    .line 4954
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_c8
    const-string v11, "WindowManager"

    const-string v13, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_13

    goto :goto_bb
.end method

.method public prepareAppTransition(IZ)V
    .registers 8
    .parameter "transit"
    .parameter "alwaysKeepCurrent"

    .prologue
    .line 3596
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3598
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3601
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3605
    :try_start_15
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3606
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-nez v0, :cond_54

    .line 3608
    :cond_2e
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 3620
    :cond_30
    :goto_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 3621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 3622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 3623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3624
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3625
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3628
    :cond_52
    monitor-exit v1

    .line 3629
    return-void

    .line 3609
    :cond_54
    if-nez p2, :cond_30

    .line 3610
    const/16 v0, 0x1008

    if-ne p1, v0, :cond_66

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v0, v2, :cond_66

    .line 3613
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    goto :goto_30

    .line 3628
    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_15 .. :try_end_65} :catchall_63

    throw v0

    .line 3614
    :cond_66
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_30

    :try_start_6a
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v0, v2, :cond_30

    .line 3617
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_63

    goto :goto_30
.end method

.method prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .registers 23
    .parameter "window"
    .parameter "session"
    .parameter "flags"
    .parameter "width"
    .parameter "height"
    .parameter "outSurface"

    .prologue
    .line 6191
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 6192
    .local v3, callerPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 6193
    .local v12, origId:J
    const/4 v14, 0x0

    .line 6196
    .local v14, token:Landroid/os/IBinder;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_be

    .line 6198
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_72

    .line 6199
    new-instance v1, Landroid/view/Surface;

    const-string v4, "drag surface"

    const/4 v5, 0x0

    const/4 v8, -0x3

    const/4 v9, 0x4

    move-object/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .line 6203
    .local v1, surface:Landroid/view/Surface;
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 6204
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 6205
    .local v9, winBinder:Landroid/os/IBinder;
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_c1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e .. :try_end_32} :catch_7b

    .line 6206
    .end local v14           #token:Landroid/os/IBinder;
    .local v6, token:Landroid/os/IBinder;
    :try_start_32
    new-instance v4, Lcom/android/server/wm/DragState;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object v7, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/Surface;ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 6207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v1, v2, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    .line 6208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v14, Landroid/os/Binder;

    invoke-direct {v14}, Landroid/os/Binder;-><init>()V

    iput-object v14, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_b6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_32 .. :try_end_50} :catch_c4

    .line 6211
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :try_start_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 6212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 6213
    .local v11, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v11, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_c1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_50 .. :try_end_6c} :catch_7b

    move-object v6, v14

    .line 6224
    .end local v1           #surface:Landroid/view/Surface;
    .end local v9           #winBinder:Landroid/os/IBinder;
    .end local v11           #msg:Landroid/os/Message;
    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_6d
    :goto_6d
    :try_start_6d
    monitor-exit v15
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_b6

    .line 6226
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6229
    return-object v6

    .line 6215
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :cond_72
    :try_start_72
    const-string v2, "WindowManager"

    const-string v4, "Drag already in progress"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_c1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_72 .. :try_end_79} :catch_7b

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_6d

    .line 6217
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catch_7b
    move-exception v10

    move-object v6, v14

    .line 6218
    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :goto_7d
    :try_start_7d
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t allocate drag surface w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_6d

    .line 6220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 6221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_6d

    .line 6224
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_b6
    move-exception v2

    :goto_b7
    monitor-exit v15
    :try_end_b8
    .catchall {:try_start_7d .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b9

    .line 6226
    :catchall_b9
    move-exception v2

    :goto_ba
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catchall_be
    move-exception v2

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_ba

    .line 6224
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catchall_c1
    move-exception v2

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_b7

    .line 6217
    .restart local v1       #surface:Landroid/view/Surface;
    .restart local v9       #winBinder:Landroid/os/IBinder;
    :catch_c4
    move-exception v10

    goto :goto_7d
.end method

.method final rebuildAppWindowListLocked()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 7208
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7210
    .local v1, NW:I
    const/4 v4, -0x1

    .line 7211
    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .line 7213
    .local v5, numRemoved:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    array-length v11, v11

    if-ge v11, v1, :cond_14

    .line 7214
    add-int/lit8 v11, v1, 0xa

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    .line 7218
    :cond_14
    const/4 v2, 0x0

    .line 7219
    .local v2, i:I
    :goto_15
    if-ge v2, v1, :cond_48

    .line 7220
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 7221
    .local v8, w:Lcom/android/server/wm/WindowState;
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_38

    .line 7222
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 7223
    .local v9, win:Lcom/android/server/wm/WindowState;
    iput-boolean v14, v9, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 7224
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aput-object v9, v11, v5

    .line 7225
    iput-boolean v14, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 7228
    add-int/lit8 v1, v1, -0x1

    .line 7229
    add-int/lit8 v5, v5, 0x1

    .line 7230
    goto :goto_15

    .line 7231
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :cond_38
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v11, v12, :cond_45

    add-int/lit8 v11, v2, -0x1

    if-ne v4, v11, :cond_45

    .line 7233
    move v4, v2

    .line 7235
    :cond_45
    add-int/lit8 v2, v2, 0x1

    .line 7236
    goto :goto_15

    .line 7240
    .end local v8           #w:Lcom/android/server/wm/WindowState;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    .line 7241
    move v2, v4

    .line 7247
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7248
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_52
    if-ge v3, v0, :cond_63

    .line 7249
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 7248
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 7253
    :cond_63
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7254
    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v0, :cond_7b

    .line 7255
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 7254
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 7258
    :cond_7b
    sub-int/2addr v2, v4

    .line 7259
    if-eq v2, v5, :cond_f5

    .line 7260
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rebuild removed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " windows but added "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7262
    const/4 v2, 0x0

    :goto_a1
    if-ge v2, v5, :cond_e1

    .line 7263
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aget-object v10, v11, v2

    .line 7264
    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    if-eqz v11, :cond_de

    .line 7265
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 7266
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 7267
    .local v6, pw:Ljava/io/PrintWriter;
    const-string v11, ""

    invoke-virtual {v10, v6, v11, v14}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 7268
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 7269
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This window was lost: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    const-string v11, "WindowManager"

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7262
    .end local v6           #pw:Ljava/io/PrintWriter;
    .end local v7           #sw:Ljava/io/StringWriter;
    :cond_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 7273
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_e1
    const-string v11, "WindowManager"

    const-string v12, "Current app token list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7274
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpAppTokensLocked()V

    .line 7275
    const-string v11, "WindowManager"

    const-string v12, "Final window list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7276
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked()V

    .line 7278
    :cond_f5
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z
    .registers 19
    .parameter "win"
    .parameter "operation"
    .parameter "secure"

    .prologue
    .line 8989
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 8990
    .local v9, surface:Landroid/view/Surface;
    const/4 v6, 0x0

    .line 8991
    .local v6, leakedSurface:Z
    const/4 v5, 0x0

    .line 8993
    .local v5, killedApps:Z
    const/16 v11, 0x7918

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8996
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v11, :cond_30

    .line 8997
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 9000
    :cond_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9005
    .local v2, callingIdentity:J
    :try_start_34
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9006
    .local v1, N:I
    const-string v11, "WindowManager"

    const-string v12, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9007
    const/4 v4, 0x0

    .local v4, i:I
    :goto_42
    if-ge v4, v1, :cond_109

    .line 9008
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 9009
    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v11, :cond_bd

    .line 9010
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c0

    .line 9011
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " surface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9017
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->destroy()V

    .line 9018
    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9019
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 9020
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9021
    add-int/lit8 v4, v4, -0x1

    .line 9022
    add-int/lit8 v1, v1, -0x1

    .line 9023
    const/4 v6, 0x1

    .line 9007
    :cond_bd
    :goto_bd
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 9024
    :cond_c0
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_bd

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v11, :cond_bd

    .line 9025
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " surface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9029
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->destroy()V

    .line 9030
    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9031
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 9032
    const/4 v6, 0x1

    goto :goto_bd

    .line 9037
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_109
    if-nez v6, :cond_15a

    .line 9038
    const-string v11, "WindowManager"

    const-string v12, "No leaked surfaces; killing applicatons!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9039
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 9040
    .local v7, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    :goto_118
    if-ge v4, v1, :cond_134

    .line 9041
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 9042
    .restart local v10       #ws:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v11, :cond_131

    .line 9043
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v7, v11, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 9040
    :cond_131
    add-int/lit8 v4, v4, 0x1

    goto :goto_118

    .line 9046
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_134
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-lez v11, :cond_15a

    .line 9047
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    new-array v8, v11, [I

    .line 9048
    .local v8, pids:[I
    const/4 v4, 0x0

    :goto_141
    array-length v11, v8

    if-ge v4, v11, :cond_14d

    .line 9049
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    aput v11, v8, v4
    :try_end_14a
    .catchall {:try_start_34 .. :try_end_14a} :catchall_184

    .line 9048
    add-int/lit8 v4, v4, 0x1

    goto :goto_141

    .line 9052
    :cond_14d
    :try_start_14d
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v12, "Free memory"

    move/from16 v0, p3

    invoke-interface {v11, v8, v12, v0}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_156
    .catchall {:try_start_14d .. :try_end_156} :catchall_184
    .catch Landroid/os/RemoteException; {:try_start_14d .. :try_end_156} :catch_18d

    move-result v11

    if-eqz v11, :cond_15a

    .line 9053
    const/4 v5, 0x1

    .line 9060
    .end local v7           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v8           #pids:[I
    :cond_15a
    :goto_15a
    if-nez v6, :cond_15e

    if-eqz v5, :cond_17b

    .line 9063
    :cond_15e
    :try_start_15e
    const-string v11, "WindowManager"

    const-string v12, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9064
    if-eqz v9, :cond_174

    .line 9067
    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V

    .line 9068
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9069
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_174
    .catchall {:try_start_15e .. :try_end_174} :catchall_184

    .line 9073
    :cond_174
    :try_start_174
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v11}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_17b
    .catchall {:try_start_174 .. :try_end_17b} :catchall_184
    .catch Landroid/os/RemoteException; {:try_start_174 .. :try_end_17b} :catch_18b

    .line 9078
    :cond_17b
    :goto_17b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9081
    if-nez v6, :cond_182

    if-eqz v5, :cond_189

    :cond_182
    const/4 v11, 0x1

    :goto_183
    return v11

    .line 9078
    .end local v1           #N:I
    .end local v4           #i:I
    :catchall_184
    move-exception v11

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 9081
    .restart local v1       #N:I
    .restart local v4       #i:I
    :cond_189
    const/4 v11, 0x0

    goto :goto_183

    .line 9074
    :catch_18b
    move-exception v11

    goto :goto_17b

    .line 9055
    .restart local v7       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v8       #pids:[I
    :catch_18d
    move-exception v11

    goto :goto_15a
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 4564
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 4566
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4569
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    .line 4570
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4572
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_38

    .line 4580
    :goto_22
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_35

    if-eqz v1, :cond_38

    .line 4582
    :try_start_26
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_22

    .line 4583
    :catch_2c
    move-exception v0

    .line 4584
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_22

    .line 4588
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v1

    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 4589
    return-void
.end method

.method public reevaluateStatusBarVisibility()V
    .registers 5

    .prologue
    .line 9412
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 9413
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    .line 9414
    .local v0, visibility:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    .line 9415
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 9416
    monitor-exit v2

    .line 9417
    return-void

    .line 9416
    .end local v0           #visibility:I
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .registers 45
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "flags"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 2527
    const/4 v9, 0x0

    .line 2530
    .local v9, displayed:Z
    const/16 v22, 0x0

    .line 2533
    .local v22, surfaceChanged:Z
    const/16 v23, 0x0

    .line 2534
    .local v23, systemUiVisibility:I
    if-eqz p4, :cond_2e

    .line 2535
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v28, v0

    or-int v23, v27, v28

    .line 2536
    const/high16 v27, 0x1ff

    and-int v27, v27, v23

    if-eqz v27, :cond_2e

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "android.permission.STATUS_BAR"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_2e

    .line 2539
    const v27, -0x1ff0001

    and-int v23, v23, v27

    .line 2543
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2545
    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 2546
    const/16 v27, 0x0

    :try_start_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v26

    .line 2547
    .local v26, win:Lcom/android/server/wm/WindowState;
    if-nez v26, :cond_4d

    .line 2548
    const/16 v27, 0x0

    monitor-exit v28

    .line 2838
    :goto_4c
    return v27

    .line 2550
    :cond_4d
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p5

    if-ne v0, v1, :cond_65

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p6

    if-eq v0, v1, :cond_79

    .line 2552
    :cond_65
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2553
    move/from16 v0, p5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2554
    move/from16 v0, p6

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2556
    :cond_79
    if-eqz p4, :cond_8d

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v27, v0

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_8d

    .line 2557
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2560
    :cond_8d
    if-eqz p4, :cond_9c

    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2564
    :cond_9c
    and-int/lit8 v27, p8, 0x2

    if-eqz v27, :cond_d3

    const/16 v27, 0x1

    :goto_a2
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceDestroyDeferred:Z

    .line 2567
    const/4 v6, 0x0

    .line 2568
    .local v6, attrChanges:I
    const/4 v11, 0x0

    .line 2569
    .local v11, flagChanges:I
    if-eqz p4, :cond_108

    .line 2570
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_d6

    .line 2571
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v29, "Window type can not be changed after the window is added."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 2830
    .end local v6           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    :catchall_d0
    move-exception v27

    monitor-exit v28
    :try_end_d2
    .catchall {:try_start_3b .. :try_end_d2} :catchall_d0

    throw v27

    .line 2564
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    :cond_d3
    const/16 v27, 0x0

    goto :goto_a2

    .line 2574
    .restart local v6       #attrChanges:I
    .restart local v11       #flagChanges:I
    :cond_d6
    :try_start_d6
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    xor-int v11, v29, v30

    move-object/from16 v0, v27

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2575
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 2576
    and-int/lit8 v27, v6, 0x1

    if-eqz v27, :cond_108

    .line 2577
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2583
    :cond_108
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x2000

    and-int v27, v27, v29

    if-eqz v27, :cond_488

    const/16 v27, 0x1

    :goto_11c
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 2585
    and-int/lit16 v0, v6, 0x80

    move/from16 v27, v0

    if-eqz v27, :cond_134

    .line 2586
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAlpha:F

    .line 2589
    :cond_134
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x4000

    move/from16 v27, v0

    if-eqz v27, :cond_48c

    const/16 v20, 0x1

    .line 2592
    .local v20, scaledWindow:Z
    :goto_14a
    if-eqz v20, :cond_498

    .line 2595
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p5

    if-eq v0, v1, :cond_490

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_16a
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2597
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p6

    if-eq v0, v1, :cond_494

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_18e
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2603
    :goto_194
    const v27, 0x20008

    and-int v27, v27, v11

    if-eqz v27, :cond_4a8

    const/4 v13, 0x1

    .line 2607
    .local v13, imMayMove:Z
    :goto_19c
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p7

    if-ne v0, v1, :cond_1b4

    and-int/lit8 v27, v11, 0x8

    if-nez v27, :cond_1b4

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v27, v0

    if-nez v27, :cond_4ab

    :cond_1b4
    const/4 v12, 0x1

    .line 2611
    .local v12, focusMayChange:Z
    :goto_1b5
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p7

    if-eq v0, v1, :cond_4ae

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x10

    and-int v27, v27, v29

    if-eqz v27, :cond_4ae

    const/16 v25, 0x1

    .line 2613
    .local v25, wallpaperMayMove:Z
    :goto_1d5
    const/high16 v27, 0x10

    and-int v27, v27, v11

    if-eqz v27, :cond_4b2

    const/16 v27, 0x1

    :goto_1dd
    or-int v25, v25, v27

    .line 2615
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 2616
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .line 2617
    .local v16, oldVisibility:I
    move/from16 v0, p7

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2624
    if-nez p7, :cond_510

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_20b

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v27, v0

    if-nez v27, :cond_510

    .line 2626
    :cond_20b
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v27

    if-nez v27, :cond_4b6

    const/4 v9, 0x1

    .line 2627
    :goto_212
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_21d

    .line 2628
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->cancelExitAnimationForNextAnimationLocked()V

    .line 2630
    :cond_21d
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v27, v0

    if-eqz v27, :cond_23a

    .line 2631
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2634
    :cond_23a
    const/16 v27, 0x8

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_24a

    .line 2635
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2637
    :cond_24a
    if-eqz v9, :cond_2eb

    .line 2638
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_287

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v27, v0

    if-nez v27, :cond_287

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v27, v0

    if-nez v27, :cond_287

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-nez v27, :cond_287

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_287

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v27

    if-eqz v27, :cond_287

    .line 2641
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V

    .line 2643
    :cond_287
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x20

    and-int v27, v27, v29

    if-eqz v27, :cond_2a1

    .line 2647
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 2649
    :cond_2a1
    const/4 v8, 0x0

    .line 2650
    .local v8, diff:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_2eb

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_2eb

    .line 2653
    :cond_2d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2662
    .end local v8           #diff:I
    :cond_2eb
    and-int/lit8 v27, v6, 0x8

    if-eqz v27, :cond_2f5

    .line 2664
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V
    :try_end_2f2
    .catchall {:try_start_d6 .. :try_end_2f2} :catchall_d0

    .line 2665
    const/4 v9, 0x1

    .line 2666
    const/16 v22, 0x1

    .line 2669
    :cond_2f5
    :try_start_2f5
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-nez v27, :cond_2ff

    .line 2670
    const/16 v22, 0x1

    .line 2672
    :cond_2ff
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .line 2673
    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_4b9

    .line 2674
    move-object/from16 v0, p13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 2675
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 2676
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z
    :try_end_31c
    .catchall {:try_start_2f5 .. :try_end_31c} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_31c} :catch_4be

    .line 2693
    :goto_31c
    if-eqz v9, :cond_31f

    .line 2694
    const/4 v12, 0x1

    .line 2696
    :cond_31f
    :try_start_31f
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x7db

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_342

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-nez v27, :cond_342

    .line 2698
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2699
    const/4 v13, 0x1

    .line 2701
    :cond_342
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_3a5

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3a5

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3a5

    .line 2707
    const v15, 0x480001

    .line 2711
    .local v15, mask:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 2712
    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v29, -0x480002

    and-int v27, v27, v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const v30, 0x480001

    and-int v29, v29, v30

    or-int v27, v27, v29

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2771
    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_3a5
    :goto_3a5
    if-eqz v12, :cond_3b8

    .line 2773
    const/16 v27, 0x3

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v27

    if-eqz v27, :cond_3b8

    .line 2775
    const/4 v13, 0x0

    .line 2782
    :cond_3b8
    const/4 v5, 0x0

    .line 2784
    .local v5, assignLayers:Z
    if-eqz v13, :cond_3ca

    .line 2785
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v27

    if-nez v27, :cond_3c9

    if-eqz v9, :cond_3ca

    .line 2791
    :cond_3c9
    const/4 v5, 0x1

    .line 2794
    :cond_3ca
    if-eqz v25, :cond_3d5

    .line 2795
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v27

    and-int/lit8 v27, v27, 0x2

    if-eqz v27, :cond_3d5

    .line 2796
    const/4 v5, 0x1

    .line 2800
    :cond_3d5
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2801
    and-int/lit8 v27, p8, 0x1

    if-eqz v27, :cond_5ff

    const/16 v27, 0x1

    :goto_3e3
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2802
    if-eqz v5, :cond_3ee

    .line 2803
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2805
    :cond_3ee
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    .line 2806
    .local v7, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2807
    if-eqz v9, :cond_420

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v27, v0

    if-eqz v27, :cond_420

    .line 2808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 2810
    :cond_420
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_431

    .line 2811
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2813
    :cond_431
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2814
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2815
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2827
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 2829
    .local v14, inTouchMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2830
    monitor-exit v28
    :try_end_46c
    .catchall {:try_start_31f .. :try_end_46c} :catchall_d0

    .line 2832
    if-eqz v7, :cond_471

    .line 2833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 2836
    :cond_471
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2838
    if-eqz v14, :cond_603

    const/16 v27, 0x1

    move/from16 v28, v27

    :goto_47a
    if-eqz v9, :cond_609

    const/16 v27, 0x2

    :goto_47e
    or-int v28, v28, v27

    if-eqz v22, :cond_60d

    const/16 v27, 0x4

    :goto_484
    or-int v27, v27, v28

    goto/16 :goto_4c

    .line 2583
    .end local v5           #assignLayers:Z
    .end local v7           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v25           #wallpaperMayMove:Z
    :cond_488
    const/16 v27, 0x0

    goto/16 :goto_11c

    .line 2589
    :cond_48c
    const/16 v20, 0x0

    goto/16 :goto_14a

    .line 2595
    .restart local v20       #scaledWindow:Z
    :cond_490
    const/high16 v27, 0x3f80

    goto/16 :goto_16a

    .line 2597
    :cond_494
    const/high16 v27, 0x3f80

    goto/16 :goto_18e

    .line 2600
    :cond_498
    const/high16 v27, 0x3f80

    :try_start_49a
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F
    :try_end_4a6
    .catchall {:try_start_49a .. :try_end_4a6} :catchall_d0

    goto/16 :goto_194

    .line 2603
    :cond_4a8
    const/4 v13, 0x0

    goto/16 :goto_19c

    .line 2607
    .restart local v13       #imMayMove:Z
    :cond_4ab
    const/4 v12, 0x0

    goto/16 :goto_1b5

    .line 2611
    .restart local v12       #focusMayChange:Z
    :cond_4ae
    const/16 v25, 0x0

    goto/16 :goto_1d5

    .line 2613
    .restart local v25       #wallpaperMayMove:Z
    :cond_4b2
    const/16 v27, 0x0

    goto/16 :goto_1dd

    .line 2626
    .restart local v16       #oldVisibility:I
    :cond_4b6
    const/4 v9, 0x0

    goto/16 :goto_212

    .line 2682
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_4b9
    :try_start_4b9
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V
    :try_end_4bc
    .catchall {:try_start_4b9 .. :try_end_4bc} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_4b9 .. :try_end_4bc} :catch_4be

    goto/16 :goto_31c

    .line 2684
    .end local v21           #surface:Landroid/view/Surface;
    :catch_4be
    move-exception v10

    .line 2685
    .local v10, e:Ljava/lang/Exception;
    :try_start_4bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2687
    const-string v27, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception thrown when creating surface for client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2690
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2691
    const/16 v27, 0x0

    monitor-exit v28

    goto/16 :goto_4c

    .line 2715
    .end local v10           #e:Ljava/lang/Exception;
    :cond_510
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2716
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_56f

    .line 2722
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_530

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_56f

    .line 2723
    :cond_530
    const/16 v22, 0x1

    .line 2726
    const/16 v24, 0x2002

    .line 2727
    .local v24, transit:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x3

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_548

    .line 2728
    const/16 v24, 0x5

    .line 2730
    :cond_548
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-nez v27, :cond_59c

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v27

    if-eqz v27, :cond_59c

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v27

    if-eqz v27, :cond_59c

    .line 2732
    const/4 v12, 0x1

    .line 2733
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2753
    .end local v24           #transit:I
    :cond_56f
    :goto_56f
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_58f

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x1000

    and-int v27, v27, v29

    if-eqz v27, :cond_58f

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5e0

    .line 2760
    :cond_58f
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    .line 2761
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V

    goto/16 :goto_3a5

    .line 2734
    .restart local v24       #transit:I
    :cond_59c
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v27

    if-eqz v27, :cond_5ab

    .line 2737
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    goto :goto_56f

    .line 2738
    :cond_5ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5c8

    .line 2742
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2743
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimating:Z

    goto :goto_56f

    .line 2745
    :cond_5c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5dc

    .line 2746
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2748
    :cond_5dc
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    goto :goto_56f

    .line 2763
    .end local v24           #transit:I
    :cond_5e0
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3a5

    .line 2766
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 2767
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    move-object/from16 v0, p13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_5fd
    .catchall {:try_start_4bf .. :try_end_5fd} :catchall_d0

    goto/16 :goto_3a5

    .line 2801
    .restart local v5       #assignLayers:Z
    :cond_5ff
    const/16 v27, 0x0

    goto/16 :goto_3e3

    .line 2838
    .restart local v7       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_603
    const/16 v27, 0x0

    move/from16 v28, v27

    goto/16 :goto_47a

    :cond_609
    const/16 v27, 0x0

    goto/16 :goto_47e

    :cond_60d
    const/16 v27, 0x0

    goto/16 :goto_484
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .registers 16
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    .line 4145
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4147
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4150
    :cond_13
    const/4 v1, 0x0

    .line 4151
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v11, 0x0

    .line 4152
    .local v11, startingToken:Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    .line 4154
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4155
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4156
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 4157
    .local v6, basewtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v6, :cond_a5

    iget-object v1, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_a5

    .line 4159
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 4161
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 4162
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4163
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 4164
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 4165
    const/4 v7, 0x1

    .line 4175
    :cond_48
    :goto_48
    if-eqz v7, :cond_9b

    .line 4179
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4189
    :goto_4f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4190
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 4191
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_5c

    .line 4192
    move-object v11, v1

    .line 4194
    :cond_5c
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 4195
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_73

    .line 4197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 4198
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4199
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 4205
    :cond_73
    :goto_73
    if-nez v7, :cond_7a

    if-eqz v1, :cond_7a

    .line 4206
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 4208
    :cond_7a
    monitor-exit v12
    :try_end_7b
    .catchall {:try_start_1d .. :try_end_7b} :catchall_a2

    .line 4209
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4211
    if-eqz v11, :cond_8c

    .line 4214
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4215
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4217
    .end local v8           #m:Landroid/os/Message;
    :cond_8c
    return-void

    .line 4166
    :cond_8d
    :try_start_8d
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_48

    .line 4167
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4168
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    .line 4169
    const/4 v7, 0x1

    goto :goto_48

    .line 4184
    :cond_9b
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 4185
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->animating:Z

    goto :goto_4f

    .line 4208
    .end local v6           #basewtoken:Lcom/android/server/wm/WindowToken;
    :catchall_a2
    move-exception v0

    monitor-exit v12
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_a2

    throw v0

    .line 4202
    .restart local v6       #basewtoken:Lcom/android/server/wm/WindowToken;
    :cond_a5
    :try_start_a5
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_a2

    goto :goto_73
.end method

.method removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z
    .registers 6
    .parameter "window"

    .prologue
    const/4 v0, 0x1

    .line 9439
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9440
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 9441
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 9442
    monitor-exit v1

    .line 9444
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_13

    .line 9445
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2217
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2218
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2219
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_c

    .line 2220
    monitor-exit v2

    .line 2224
    :goto_b
    return-void

    .line 2222
    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2223
    monitor-exit v2

    goto :goto_b

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 5801
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5802
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5803
    monitor-exit v1

    .line 5804
    return-void

    .line 5803
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .registers 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2236
    .local v0, origId:J
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2248
    const/4 v3, 0x0

    .line 2253
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_60

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_60

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v4, :cond_60

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 2257
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2259
    const/16 v2, 0x2002

    .line 2260
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_30

    .line 2261
    const/4 v2, 0x5

    .line 2264
    :cond_30
    invoke-virtual {p0, p2, v2, v6}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2265
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2268
    .end local v2           #transit:I
    :cond_38
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_42

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 2271
    :cond_42
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2272
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2273
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2274
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2276
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2277
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2278
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_5c

    .line 2279
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2282
    :cond_5c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2297
    :goto_5f
    return-void

    .line 2287
    :cond_60
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2290
    if-eqz v3, :cond_7a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_7a

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2293
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2295
    :cond_7a
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5f
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .registers 14
    .parameter "token"

    .prologue
    .line 3204
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 3206
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3209
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3210
    .local v4, origId:J
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 3211
    :try_start_19
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 3212
    .local v7, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_82

    .line 3213
    const/4 v2, 0x0

    .line 3214
    .local v2, delayed:Z
    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v8, :cond_68

    .line 3215
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3217
    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3218
    .local v0, N:I
    const/4 v1, 0x0

    .line 3220
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_54

    .line 3221
    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3223
    .local v6, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 3224
    const/4 v2, 0x1

    .line 3227
    :cond_44
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 3228
    const/16 v8, 0x2002

    const/4 v10, 0x0

    invoke-virtual {p0, v6, v8, v10}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3230
    const/4 v1, 0x1

    .line 3220
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3234
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_54
    if-eqz v1, :cond_61

    .line 3235
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3236
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3237
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3241
    :cond_61
    if-eqz v2, :cond_73

    .line 3242
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3248
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    :cond_68
    :goto_68
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3252
    .end local v2           #delayed:Z
    :goto_6e
    monitor-exit v9
    :try_end_6f
    .catchall {:try_start_19 .. :try_end_6f} :catchall_7f

    .line 3253
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3254
    return-void

    .line 3243
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_73
    :try_start_73
    iget v8, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v8, v10, :cond_68

    .line 3244
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_68

    .line 3252
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_7f
    move-exception v8

    monitor-exit v9
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_7f

    throw v8

    .line 3250
    .restart local v7       #wtoken:Lcom/android/server/wm/WindowToken;
    :cond_82
    :try_start_82
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_7f

    goto :goto_6e
.end method

.method requestAnimationLocked(J)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 8952
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_13

    .line 8953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 8954
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8956
    :cond_13
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 6253
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 6255
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6258
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6259
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 6260
    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_24

    .line 6261
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 6263
    :cond_24
    monitor-exit v2

    .line 6264
    return-void

    .line 6263
    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v1
.end method

.method resumeRotationLocked()V
    .registers 4

    .prologue
    .line 5287
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v1, :cond_1c

    .line 5288
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 5289
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v1, :cond_1c

    .line 5290
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    .line 5291
    .local v0, changed:Z
    if-eqz v0, :cond_1c

    .line 5292
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 5296
    .end local v0           #changed:Z
    :cond_1c
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;
    .registers 38
    .parameter "appToken"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 5071
    const-string v31, "android.permission.READ_FRAME_BUFFER"

    const-string v32, "screenshotApplications()"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_18

    .line 5073
    new-instance v31, Ljava/lang/SecurityException;

    const-string v32, "Requires READ_FRAME_BUFFER permission"

    invoke-direct/range {v31 .. v32}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 5078
    :cond_18
    const/16 v20, 0x0

    .line 5079
    .local v20, maxLayer:I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 5085
    .local v11, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 5086
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 5088
    .local v14, ident:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 5089
    .local v9, dw:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 5091
    .local v8, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    const/16 v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v31

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    move/from16 v0, v31

    add-int/lit16 v3, v0, 0x3e8

    .line 5094
    .local v3, aboveAppLayer:I
    add-int/lit16 v3, v3, 0x2710

    .line 5096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_bf

    const/16 v17, 0x1

    .line 5102
    .local v17, isImeTarget:Z
    :goto_96
    const/16 v16, 0x0

    .line 5103
    .local v16, including:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    .local v13, i:I
    :goto_a4
    if-ltz v13, :cond_16b

    .line 5104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowState;

    .line 5105
    .local v30, ws:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v31, v0

    if-nez v31, :cond_c2

    .line 5103
    :cond_bc
    :goto_bc
    add-int/lit8 v13, v13, -0x1

    goto :goto_a4

    .line 5096
    .end local v13           #i:I
    .end local v16           #including:Z
    .end local v17           #isImeTarget:Z
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :cond_bf
    const/16 v17, 0x0

    goto :goto_96

    .line 5108
    .restart local v13       #i:I
    .restart local v16       #including:Z
    .restart local v17       #isImeTarget:Z
    .restart local v30       #ws:Lcom/android/server/wm/WindowState;
    :cond_c2
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v3, :cond_bc

    .line 5114
    if-nez v16, :cond_f4

    if-eqz p1, :cond_f4

    .line 5118
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-eqz v31, :cond_da

    if-nez v17, :cond_f4

    .line 5121
    :cond_da
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_bc

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_bc

    .line 5129
    :cond_f4
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-nez v31, :cond_168

    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v31

    if-nez v31, :cond_168

    const/16 v16, 0x1

    .line 5131
    :goto_106
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_118

    .line 5132
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v20, v0

    .line 5136
    :cond_118
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v31, v0

    if-nez v31, :cond_bc

    .line 5137
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    .line 5138
    .local v29, wf:Landroid/graphics/Rect;
    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 5139
    .local v7, cr:Landroid/graphics/Rect;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    add-int v18, v31, v33

    .line 5140
    .local v18, left:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v28, v31, v33

    .line 5141
    .local v28, top:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v22, v31, v33

    .line 5142
    .local v22, right:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v5, v31, v33

    .line 5143
    .local v5, bottom:I
    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_bc

    .line 5201
    .end local v3           #aboveAppLayer:I
    .end local v5           #bottom:I
    .end local v7           #cr:Landroid/graphics/Rect;
    .end local v8           #dh:I
    .end local v9           #dw:I
    .end local v13           #i:I
    .end local v14           #ident:J
    .end local v16           #including:Z
    .end local v17           #isImeTarget:Z
    .end local v18           #left:I
    .end local v22           #right:I
    .end local v28           #top:I
    .end local v29           #wf:Landroid/graphics/Rect;
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :catchall_165
    move-exception v31

    monitor-exit v32
    :try_end_167
    .catchall {:try_start_26 .. :try_end_167} :catchall_165

    throw v31

    .line 5129
    .restart local v3       #aboveAppLayer:I
    .restart local v8       #dh:I
    .restart local v9       #dw:I
    .restart local v13       #i:I
    .restart local v14       #ident:J
    .restart local v16       #including:Z
    .restart local v17       #isImeTarget:Z
    .restart local v30       #ws:Lcom/android/server/wm/WindowState;
    :cond_168
    const/16 v16, 0x0

    goto :goto_106

    .line 5146
    .end local v30           #ws:Lcom/android/server/wm/WindowState;
    :cond_16b
    :try_start_16b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5149
    const/16 v31, 0x0

    const/16 v33, 0x0

    move/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1, v9, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 5151
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_181

    if-nez v20, :cond_184

    .line 5152
    :cond_181
    const/4 v4, 0x0

    monitor-exit v32

    .line 5218
    :goto_183
    return-object v4

    .line 5156
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/Display;->getRotation()I

    move-result v23

    .line 5158
    .local v23, rot:I
    const-string v31, "ro.sf.hwrotation"

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v31

    div-int/lit8 v31, v31, 0x5a

    add-int v31, v31, v23

    rem-int/lit8 v23, v31, 0x4

    .line 5160
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 5161
    .local v12, fw:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 5165
    .local v10, fh:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v12

    move/from16 v33, v0

    div-float v26, v31, v33

    .line 5166
    .local v26, targetWidthScale:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v33, v0

    div-float v25, v31, v33

    .line 5167
    .local v25, targetHeightScale:F
    if-gt v9, v8, :cond_249

    .line 5168
    move/from16 v24, v26

    .line 5171
    .local v24, scale:F
    cmpl-float v31, v25, v24

    if-lez v31, :cond_1d6

    int-to-float v0, v12

    move/from16 v31, v0

    mul-float v31, v31, v25

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p2

    if-ne v0, v1, :cond_1d6

    .line 5172
    move/from16 v24, v25

    .line 5184
    :cond_1d6
    :goto_1d6
    int-to-float v0, v9

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v9, v0

    .line 5185
    int-to-float v0, v8

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v8, v0

    .line 5186
    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_1f6

    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_205

    .line 5187
    :cond_1f6
    move/from16 v27, v9

    .line 5188
    .local v27, tmp:I
    move v9, v8

    .line 5189
    move/from16 v8, v27

    .line 5190
    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_263

    const/16 v23, 0x3

    .line 5200
    .end local v27           #tmp:I
    :cond_205
    :goto_205
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v20

    invoke-static {v9, v8, v0, v1}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 5201
    .local v21, rawss:Landroid/graphics/Bitmap;
    monitor-exit v32
    :try_end_210
    .catchall {:try_start_16b .. :try_end_210} :catchall_165

    .line 5203
    if-nez v21, :cond_266

    .line 5204
    const-string v31, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Failure taking screenshot for ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") to layer "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    const/4 v4, 0x0

    goto/16 :goto_183

    .line 5175
    .end local v21           #rawss:Landroid/graphics/Bitmap;
    .end local v24           #scale:F
    :cond_249
    move/from16 v24, v25

    .line 5178
    .restart local v24       #scale:F
    cmpl-float v31, v26, v24

    if-lez v31, :cond_1d6

    int-to-float v0, v10

    move/from16 v31, v0

    mul-float v31, v31, v26

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p3

    if-ne v0, v1, :cond_1d6

    .line 5179
    move/from16 v24, v26

    goto/16 :goto_1d6

    .line 5190
    .restart local v27       #tmp:I
    :cond_263
    const/16 v23, 0x1

    goto :goto_205

    .line 5209
    .end local v27           #tmp:I
    .restart local v21       #rawss:Landroid/graphics/Bitmap;
    :cond_266
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v31

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5210
    .local v4, bm:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 5211
    .local v19, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v9, v8, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 5212
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v24

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5213
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5214
    .local v6, canvas:Landroid/graphics/Canvas;
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 5215
    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5217
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_183
.end method

.method sendNewConfiguration()V
    .registers 3

    .prologue
    .line 5862
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 5865
    :goto_6
    return-void

    .line 5863
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 20
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_46

    .line 2495
    :cond_c
    move/from16 v9, p7

    .line 2496
    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2497
    .local v7, curTokenIndex:I
    :cond_14
    if-lez v7, :cond_44

    .line 2498
    add-int/lit8 v7, v7, -0x1

    .line 2499
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 2500
    .local v10, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2501
    .local v8, curWallpaperIndex:I
    :goto_26
    if-lez v8, :cond_14

    .line 2502
    add-int/lit8 v8, v8, -0x1

    .line 2503
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 2505
    .local v11, wallpaper:Lcom/android/server/wm/WindowState;
    :try_start_32
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_48

    .line 2508
    const/16 p7, 0x0

    goto :goto_26

    .line 2514
    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_44
    if-eqz v9, :cond_46

    .line 2519
    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_46
    const/4 v0, 0x0

    return-object v0

    .line 2509
    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_48
    move-exception v0

    goto :goto_26
.end method

.method public setAnimationScale(IF)V
    .registers 5
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 4653
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4655
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4658
    :cond_12
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2b

    const/4 p2, 0x0

    .line 4660
    :cond_18
    :goto_18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4661
    packed-switch p1, :pswitch_data_42

    .line 4667
    :goto_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4668
    return-void

    .line 4659
    :cond_2b
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_18

    const/high16 p2, 0x41a0

    goto :goto_18

    .line 4662
    :pswitch_34
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1f

    .line 4663
    :pswitch_3b
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1f

    .line 4661
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .registers 5
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 4671
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4673
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4676
    :cond_13
    if-eqz p1, :cond_2d

    .line 4677
    array-length v0, p1

    if-lt v0, v2, :cond_21

    .line 4678
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 4680
    :cond_21
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d

    .line 4681
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 4686
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4687
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 3301
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3303
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3306
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3307
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3308
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_35

    .line 3309
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    monitor-exit v2

    .line 3314
    :goto_34
    return-void

    .line 3312
    :cond_35
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3313
    monitor-exit v2

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .registers 8
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 3531
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3533
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3536
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3537
    :try_start_15
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3538
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_39

    .line 3539
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    monitor-exit v2

    .line 3545
    :goto_38
    return-void

    .line 3543
    :cond_39
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3544
    monitor-exit v2

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V
    .registers 29
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 3670
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "setAppStartingIcon()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 3672
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3675
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3680
    :try_start_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v16

    .line 3681
    .local v16, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v16, :cond_3d

    .line 3682
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    monitor-exit v17

    .line 3835
    :goto_3c
    return-void

    .line 3689
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_53

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v2

    if-nez v2, :cond_58

    .line 3690
    :cond_53
    monitor-exit v17

    goto :goto_3c

    .line 3834
    .end local v16           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_55
    move-exception v2

    monitor-exit v17
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_55

    throw v2

    .line 3693
    .restart local v16       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_58
    :try_start_58
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_60

    .line 3694
    monitor-exit v17

    goto :goto_3c

    .line 3697
    :cond_60
    if-eqz p9, :cond_155

    .line 3698
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v15

    .line 3699
    .local v15, ttoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v15, :cond_155

    .line 3700
    iget-object v14, v15, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3701
    .local v14, startingWindow:Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_130

    .line 3702
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    if-eqz v2, :cond_7b

    .line 3706
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3711
    :cond_7b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3715
    .local v12, origId:J
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3716
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 3717
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3718
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3719
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 3720
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3721
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3722
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 3723
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 3724
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3728
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3731
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3732
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3733
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 3740
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_cc

    .line 3741
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 3743
    :cond_cc
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v2, :cond_d5

    .line 3744
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 3746
    :cond_d5
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_e8

    .line 3747
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    .line 3748
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3749
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3751
    :cond_e8
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    iget-boolean v3, v15, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eq v2, v3, :cond_f9

    .line 3752
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3753
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3755
    :cond_f9
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_11b

    .line 3756
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3757
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->animating:Z

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    .line 3758
    iget v2, v15, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    .line 3759
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3760
    const/4 v2, 0x0

    iput v2, v15, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    .line 3761
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    .line 3762
    invoke-virtual {v15}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    .line 3765
    :cond_11b
    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3767
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3768
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3769
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3770
    monitor-exit v17

    goto/16 :goto_3c

    .line 3771
    .end local v12           #origId:J
    :cond_130
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_155

    .line 3777
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3778
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3779
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3784
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3785
    monitor-exit v17

    goto/16 :goto_3c

    .line 3792
    .end local v11           #m:Landroid/os/Message;
    .end local v14           #startingWindow:Lcom/android/server/wm/WindowState;
    .end local v15           #ttoken:Lcom/android/server/wm/AppWindowToken;
    :cond_155
    if-nez p10, :cond_15a

    .line 3793
    monitor-exit v17

    goto/16 :goto_3c

    .line 3800
    :cond_15a
    if-eqz p3, :cond_199

    .line 3801
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    .line 3803
    .local v10, ent:Lcom/android/server/AttributeCache$Entry;
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 3805
    monitor-exit v17

    goto/16 :goto_3c

    .line 3807
    :cond_177
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 3809
    monitor-exit v17

    goto/16 :goto_3c

    .line 3811
    :cond_184
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 3813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1ca

    .line 3819
    const/high16 v2, 0x10

    or-int p8, p8, v2

    .line 3826
    .end local v10           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_199
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 3827
    new-instance v2, Lcom/android/server/wm/StartingData;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3833
    .restart local v11       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3834
    monitor-exit v17

    goto/16 :goto_3c

    .line 3821
    .end local v11           #m:Landroid/os/Message;
    .restart local v10       #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_1ca
    monitor-exit v17
    :try_end_1cb
    .catchall {:try_start_58 .. :try_end_1cb} :catchall_55

    goto/16 :goto_3c
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 12
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3952
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppVisibility()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3954
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3959
    :cond_15
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3960
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3961
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_38

    .line 3962
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    monitor-exit v8

    .line 4036
    :goto_37
    return-void

    .line 3980
    :cond_38
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_a0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-eqz v3, :cond_a0

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v3, v5, :cond_a0

    .line 3983
    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eq v3, p2, :cond_55

    .line 3984
    monitor-exit v8

    goto :goto_37

    .line 4035
    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_52
    move-exception v0

    monitor-exit v8
    :try_end_54
    .catchall {:try_start_18 .. :try_end_54} :catchall_52

    throw v0

    .line 3986
    .restart local v1       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_55
    if-nez p2, :cond_91

    :goto_57
    :try_start_57
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3990
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setDummyAnimation()V

    .line 3991
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3992
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3993
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 3994
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 3995
    if-eqz p2, :cond_93

    .line 3996
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3997
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 3998
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 4003
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v0, :cond_8f

    .line 4004
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 4005
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 4007
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_8f

    .line 4014
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 4015
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 4027
    :cond_8f
    :goto_8f
    monitor-exit v8

    goto :goto_37

    :cond_91
    move v0, v2

    .line 3986
    goto :goto_57

    .line 4019
    :cond_93
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4023
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v0, :cond_8f

    .line 4024
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    goto :goto_8f

    .line 4030
    :cond_a0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4031
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 4033
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 4034
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4035
    monitor-exit v8
    :try_end_b3
    .catchall {:try_start_57 .. :try_end_b3} :catchall_52

    goto :goto_37
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .registers 7
    .parameter "token"

    .prologue
    .line 3838
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3840
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3845
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3846
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3847
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_35

    .line 3848
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    monitor-exit v2

    .line 3853
    :goto_34
    return-void

    .line 3851
    :cond_35
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3852
    monitor-exit v2

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setEventDispatching(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 6267
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6269
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6272
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6273
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 6274
    monitor-exit v1

    .line 6275
    return-void

    .line 6274
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .registers 11
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3559
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "setFocusedApp()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 3561
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3564
    :cond_14
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3565
    const/4 v0, 0x0

    .line 3566
    .local v0, changed:Z
    if-nez p1, :cond_3e

    .line 3568
    :try_start_1a
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3c

    move v0, v4

    .line 3569
    :goto_1f
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3570
    if-eqz v0, :cond_2a

    .line 3571
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 3587
    :cond_2a
    :goto_2a
    if-eqz p2, :cond_3a

    if-eqz v0, :cond_3a

    .line 3588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3589
    .local v2, origId:J
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3590
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3592
    .end local v2           #origId:J
    :cond_3a
    monitor-exit v6

    .line 3593
    :goto_3b
    return-void

    :cond_3c
    move v0, v5

    .line 3568
    goto :goto_1f

    .line 3574
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3575
    .local v1, newFocus:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_61

    .line 3576
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    monitor-exit v6

    goto :goto_3b

    .line 3592
    .end local v1           #newFocus:Lcom/android/server/wm/AppWindowToken;
    :catchall_5e
    move-exception v4

    monitor-exit v6
    :try_end_60
    .catchall {:try_start_1a .. :try_end_60} :catchall_5e

    throw v4

    .line 3579
    .restart local v1       #newFocus:Lcom/android/server/wm/AppWindowToken;
    :cond_61
    :try_start_61
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v7, v1, :cond_70

    move v0, v4

    .line 3580
    :goto_66
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3582
    if-eqz v0, :cond_2a

    .line 3583
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_5e

    goto :goto_2a

    :cond_70
    move v0, v5

    .line 3579
    goto :goto_66
.end method

.method public setForcedDisplaySize(II)V
    .registers 10
    .parameter "longDimen"
    .parameter "shortDimen"

    .prologue
    .line 7045
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7047
    :try_start_3
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v2, v4, :cond_40

    .line 7048
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p2, v2, :cond_3a

    move v1, p2

    .line 7050
    .local v1, width:I
    :goto_e
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p1, v2, :cond_3d

    move v0, p1

    .line 7058
    .local v0, height:I
    :goto_13
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    .line 7059
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_size_forced"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7061
    monitor-exit v3

    .line 7062
    return-void

    .line 7048
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_3a
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_e

    .line 7050
    .restart local v1       #width:I
    :cond_3d
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_13

    .line 7053
    .end local v1           #width:I
    :cond_40
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p1, v2, :cond_4b

    move v1, p1

    .line 7055
    .restart local v1       #width:I
    :goto_45
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p2, v2, :cond_4e

    move v0, p2

    .restart local v0       #height:I
    :goto_4a
    goto :goto_13

    .line 7053
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_4b
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_45

    .line 7055
    .restart local v1       #width:I
    :cond_4e
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_4a

    .line 7061
    .end local v1           #width:I
    :catchall_51
    move-exception v2

    monitor-exit v3
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v2
.end method

.method public setHardKeyboardEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 6151
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6152
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-eq v0, p1, :cond_10

    .line 6153
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6154
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6156
    :cond_10
    monitor-exit v1

    .line 6157
    return-void

    .line 6156
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method setHoldScreenLocked(Z)V
    .registers 4
    .parameter "holding"

    .prologue
    .line 8939
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 8940
    .local v0, state:Z
    if-eq p1, v0, :cond_14

    .line 8941
    if-eqz p1, :cond_15

    .line 8942
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStartedLw()V

    .line 8943
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8949
    :cond_14
    :goto_14
    return-void

    .line 8945
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    .line 8946
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_14
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 5011
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5012
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 5013
    monitor-exit v1

    .line 5014
    return-void

    .line 5013
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setInputFilter(Lcom/android/server/wm/InputFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 4794
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setInputFilter(Lcom/android/server/wm/InputFilter;)V

    .line 4795
    return-void
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1255
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1256
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1257
    .local v2, imw:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_23

    .line 1258
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1261
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1262
    .local v3, wi:I
    :goto_11
    if-lez v3, :cond_23

    .line 1263
    add-int/lit8 v3, v3, -0x1

    .line 1264
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 1265
    .local v0, cw:Lcom/android/server/wm/WindowState;
    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_11

    .line 1270
    .end local v0           #cw:Lcom/android/server/wm/WindowState;
    .end local v3           #wi:I
    :cond_23
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1271
    .local v1, di:I
    :goto_29
    if-lez v1, :cond_3b

    .line 1272
    add-int/lit8 v1, v1, -0x1

    .line 1273
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1274
    .restart local v2       #imw:Lcom/android/server/wm/WindowState;
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_29

    .line 1278
    :cond_3b
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "touchableRegion"

    .prologue
    .line 2434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2436
    .local v0, origId:J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4d

    .line 2437
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2438
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_45

    .line 2439
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2440
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2441
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2442
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2443
    iput p3, v2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 2444
    iget v3, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3f

    .line 2445
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2446
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2447
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    .line 2449
    :cond_3f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2450
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2452
    :cond_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_4a

    .line 2454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2456
    return-void

    .line 2452
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_4a
    move-exception v3

    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 2454
    :catchall_4d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setLandscapeProperty(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 5058
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSetLandscapeProperty:Z

    if-nez v0, :cond_5

    .line 5060
    :goto_4
    return-void

    .line 5059
    :cond_5
    const-string v0, "sys.orientation.landscape"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 3518
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3520
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3523
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3524
    :try_start_15
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 3525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 3526
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3527
    monitor-exit v1

    .line 3528
    return-void

    .line 3527
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 6161
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6162
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .line 6163
    monitor-exit v1

    .line 6164
    return-void

    .line 6163
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setPointerSpeed(I)V
    .registers 4
    .parameter "speed"

    .prologue
    .line 6428
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string v1, "setPointerSpeed()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6430
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6433
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    .line 6434
    return-void
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 5054
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5055
    return-void
.end method

.method setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .registers 15
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 3857
    const/4 v2, 0x0

    .line 3859
    .local v2, delayed:Z
    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-ne v7, p3, :cond_d

    .line 3860
    if-nez p3, :cond_44

    const/4 v7, 0x1

    :goto_8
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3861
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3864
    :cond_d
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3865
    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-ne v7, p3, :cond_97

    .line 3866
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3867
    .local v0, N:I
    const/4 v1, 0x0

    .line 3872
    .local v1, changed:Z
    const/4 v4, 0x0

    .line 3874
    .local v4, runningAppAnimation:Z
    const/4 v7, -0x1

    if-eq p4, v7, :cond_32

    .line 3875
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_28

    .line 3876
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3878
    :cond_28
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 3879
    const/4 v1, 0x1

    .line 3880
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_32

    .line 3881
    const/4 v4, 0x1

    move v2, v4

    .line 3885
    .end local v2           #delayed:Z
    :cond_32
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_6f

    .line 3886
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3887
    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v7, :cond_46

    .line 3885
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3860
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #delayed:Z
    :cond_44
    const/4 v7, 0x0

    goto :goto_8

    .line 3891
    .end local v2           #delayed:Z
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_46
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3892
    const/4 v2, 0x1

    .line 3897
    :cond_4d
    if-eqz p3, :cond_5f

    .line 3898
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-nez v7, :cond_41

    .line 3899
    if-nez v4, :cond_5d

    .line 3900
    const/16 v7, 0x1001

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3903
    :cond_5d
    const/4 v1, 0x1

    goto :goto_41

    .line 3905
    :cond_5f
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 3906
    if-nez v4, :cond_6d

    .line 3907
    const/16 v7, 0x2002

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3910
    :cond_6d
    const/4 v1, 0x1

    goto :goto_41

    .line 3914
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_6f
    if-nez p3, :cond_9d

    const/4 v7, 0x1

    :goto_72
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    .line 3915
    if-nez p3, :cond_9f

    .line 3916
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 3932
    :cond_7d
    :goto_7d
    if-eqz v1, :cond_97

    .line 3933
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3934
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3935
    if-eqz p5, :cond_91

    .line 3936
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3938
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3940
    :cond_91
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3944
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    :cond_97
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_9c

    .line 3945
    const/4 v2, 0x1

    .line 3948
    :cond_9c
    return v2

    .line 3914
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    :cond_9d
    const/4 v7, 0x0

    goto :goto_72

    .line 3920
    :cond_9f
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3921
    .local v5, swin:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_7d

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v7, :cond_ab

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v7, :cond_7d

    .line 3923
    :cond_ab
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 3924
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_7d
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 9
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 2407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2409
    .local v0, origId:J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    .line 2410
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2411
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1d

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1d

    .line 2414
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_27

    .line 2418
    :try_start_15
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_22

    .line 2420
    :try_start_1a
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2425
    :cond_1d
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_27

    .line 2427
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2429
    return-void

    .line 2420
    :catchall_22
    move-exception v3

    :try_start_23
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v3

    .line 2425
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_27
    move-exception v3

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2427
    :catchall_2a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1809
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1810
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1811
    .local v0, curTokenIndex:I
    :cond_8
    if-lez v0, :cond_2c

    .line 1812
    add-int/lit8 v0, v0, -0x1

    .line 1813
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 1814
    .local v2, token:Lcom/android/server/wm/WindowToken;
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1815
    .local v1, curWallpaperIndex:I
    :goto_1a
    if-lez v1, :cond_8

    .line 1816
    add-int/lit8 v1, v1, -0x1

    .line 1817
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1818
    .local v3, wallpaper:Lcom/android/server/wm/WindowState;
    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_1a

    .line 1823
    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_2c
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 2472
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_18

    .line 2473
    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 2474
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 2475
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 2476
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 2477
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2479
    :cond_18
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 6
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 4965
    const/4 v0, 0x0

    .line 4966
    .local v0, first:Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4975
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v1, :cond_a

    .line 4976
    monitor-exit v2

    .line 4993
    :cond_9
    :goto_9
    return-void

    .line 4978
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_16

    .line 4979
    if-nez p2, :cond_15

    .line 4980
    monitor-exit v2

    goto :goto_9

    .line 4989
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1

    .line 4982
    :cond_15
    const/4 v0, 0x1

    .line 4984
    :cond_16
    :try_start_16
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_1c

    .line 4985
    monitor-exit v2

    goto :goto_9

    .line 4987
    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 4988
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 4989
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_12

    .line 4990
    if-eqz v0, :cond_9

    .line 4991
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_9
.end method

.method public showStrictModeViolation(Z)V
    .registers 10
    .parameter "on"

    .prologue
    .line 5019
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5020
    .local v2, pid:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5024
    if-eqz p1, :cond_2d

    .line 5025
    const/4 v1, 0x0

    .line 5026
    .local v1, isVisible:Z
    :try_start_a
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5027
    .local v3, ws:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-ne v4, v2, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5028
    const/4 v1, 0x1

    .line 5032
    .end local v3           #ws:Lcom/android/server/wm/WindowState;
    :cond_29
    if-nez v1, :cond_2d

    .line 5033
    monitor-exit v5

    .line 5051
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isVisible:Z
    :goto_2c
    return-void

    .line 5039
    :cond_2d
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_49

    .line 5041
    :try_start_30
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v4, :cond_3f

    .line 5042
    new-instance v4, Lcom/android/server/wm/StrictModeFlash;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v4, v6, v7}, Lcom/android/server/wm/StrictModeFlash;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 5044
    :cond_3f
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_4c

    .line 5046
    :try_start_44
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5050
    monitor-exit v5

    goto :goto_2c

    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    throw v4

    .line 5046
    :catchall_4c
    move-exception v4

    :try_start_4d
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_49
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .parameter "win"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8968
    :try_start_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_18

    .line 8969
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 8970
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->show()V

    .line 8971
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v3, :cond_18

    .line 8974
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 8975
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_18} :catch_19

    .line 8985
    :cond_18
    :goto_18
    return v1

    .line 8979
    :catch_19
    move-exception v0

    .line 8980
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure showing surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8983
    const-string v3, "show"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move v1, v2

    .line 8985
    goto :goto_18
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .registers 10
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 4103
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4105
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4108
    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4109
    if-nez p2, :cond_25

    :try_start_17
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 4111
    monitor-exit v4

    .line 4123
    :goto_24
    return-void

    .line 4114
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4115
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2f

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_4c

    .line 4116
    :cond_2f
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    monitor-exit v4

    goto :goto_24

    .line 4122
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_49

    throw v3

    .line 4119
    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_4c
    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4120
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 4121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4122
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_49

    goto :goto_24
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 11
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 4083
    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_43

    .line 4084
    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_2d

    .line 4085
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    .line 4086
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 4087
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_2d

    .line 4088
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 4089
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 4090
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4094
    :cond_2d
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4095
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    if-ge v1, v0, :cond_43

    .line 4096
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4097
    .local v2, w:Lcom/android/server/wm/WindowState;
    iput-boolean v7, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 4095
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 4100
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_43
    return-void
.end method

.method public startViewServer(I)Z
    .registers 6
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 5519
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5548
    :cond_7
    :goto_7
    return v1

    .line 5523
    :cond_8
    const-string v2, "android.permission.DUMP"

    const-string v3, "startViewServer"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5527
    const/16 v2, 0x400

    if-lt p1, v2, :cond_7

    .line 5531
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v2, :cond_32

    .line 5532
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5534
    :try_start_22
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v1

    goto :goto_7

    .line 5535
    :catch_29
    move-exception v0

    .line 5536
    .local v0, e:Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 5543
    .end local v0           #e:Ljava/io/IOException;
    :cond_32
    :try_start_32
    new-instance v2, Lcom/android/server/wm/ViewServer;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    .line 5544
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3e} :catch_40

    move-result v1

    goto :goto_7

    .line 5545
    :catch_40
    move-exception v0

    .line 5546
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public statusBarVisibilityChanged(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 9369
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 9371
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9375
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9376
    :try_start_15
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 9377
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    .line 9378
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    .line 9379
    monitor-exit v1

    .line 9380
    return-void

    .line 9379
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .registers 8
    .parameter "token"
    .parameter "force"

    .prologue
    .line 4126
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4128
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4131
    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4132
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4133
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1f

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_21

    .line 4134
    :cond_1f
    monitor-exit v4

    .line 4142
    :goto_20
    return-void

    .line 4136
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4139
    .local v0, origId:J
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 4140
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4141
    monitor-exit v4

    goto :goto_20

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public stopViewServer()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 5565
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5576
    :cond_7
    :goto_7
    return v0

    .line 5569
    :cond_8
    const-string v1, "android.permission.DUMP"

    const-string v2, "stopViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5573
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_7

    .line 5574
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    goto :goto_7
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 6496
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 6497
    return-void
.end method

.method public thawRotation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5249
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 5251
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5256
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x309

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    .line 5257
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5258
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    .registers 11
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4040
    iget-boolean v4, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_44

    .line 4043
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4044
    .local v0, N:I
    const/4 v2, 0x0

    .line 4045
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_2c

    .line 4046
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 4047
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_29

    .line 4048
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 4049
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_28

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_28

    .line 4051
    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 4053
    :cond_28
    const/4 v2, 0x1

    .line 4045
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4056
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_2c
    if-nez p3, :cond_30

    if-eqz v2, :cond_38

    .line 4058
    :cond_30
    iput-boolean v5, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    .line 4059
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 4061
    :cond_38
    if-eqz p2, :cond_44

    .line 4062
    if-eqz v2, :cond_41

    .line 4063
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4064
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4066
    :cond_41
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 4069
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_44
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 8
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 3421
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3423
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3426
    :cond_12
    const/4 v0, 0x0

    .line 3427
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3429
    .local v1, ident:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3430
    :try_start_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3432
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 3434
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3435
    return-object v0

    .line 3432
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method updateOrientationFromAppTokensLocked(Z)Z
    .registers 7
    .parameter "inTransaction"

    .prologue
    .line 3488
    const/4 v0, 0x0

    .line 3489
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3491
    .local v1, ident:J
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 3493
    .local v3, req:I
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_1b

    .line 3494
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    .line 3497
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 3498
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1f

    move-result v4

    if-eqz v4, :cond_1b

    .line 3499
    const/4 v0, 0x1

    .line 3505
    :cond_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3503
    return v0

    .line 3505
    .end local v3           #req:I
    :catchall_1f
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public updateRotation(Z)V
    .registers 2
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 5268
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5269
    return-void
.end method

.method public updateRotationUnchecked(Z)V
    .registers 7
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 5303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5305
    .local v1, origId:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5306
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    .line 5307
    .local v0, changed:Z
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_18

    .line 5309
    if-nez v0, :cond_11

    if-eqz p1, :cond_14

    .line 5310
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 5313
    :cond_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5314
    return-void

    .line 5307
    .end local v0           #changed:Z
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v3
.end method

.method public updateRotationUncheckedLocked(Z)Z
    .registers 12
    .parameter "inTransaction"

    .prologue
    const/16 v9, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5323
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v6, :cond_9

    .line 5420
    :cond_8
    :goto_8
    return v4

    .line 5330
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_8

    .line 5338
    :cond_15
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v6, :cond_8

    .line 5349
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v2

    .line 5350
    .local v2, rotation:I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-interface {v6, v7, v2}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v6

    if-nez v6, :cond_9e

    move v0, v5

    .line 5360
    .local v0, altOrientation:Z
    :goto_2e
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-ne v6, v2, :cond_36

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eq v6, v0, :cond_8

    .line 5372
    :cond_36
    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 5373
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    .line 5374
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    .line 5376
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 5377
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5378
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5379
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5380
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 5381
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 5382
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/wm/InputManager;->setDisplayOrientation(II)V

    .line 5384
    if-nez p1, :cond_66

    .line 5387
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 5392
    :cond_66
    :try_start_66
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_77

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 5394
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V

    .line 5396
    :cond_77
    const/4 v4, 0x0

    invoke-static {v4, v2}, Landroid/view/Surface;->setOrientation(II)V
    :try_end_7b
    .catchall {:try_start_66 .. :try_end_7b} :catchall_a0

    .line 5398
    if-nez p1, :cond_80

    .line 5399
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5405
    :cond_80
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    .line 5407
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_8b
    if-ltz v1, :cond_a7

    .line 5408
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5409
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_9b

    .line 5411
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 5407
    :cond_9b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8b

    .end local v0           #altOrientation:Z
    .end local v1           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_9e
    move v0, v4

    .line 5350
    goto :goto_2e

    .line 5398
    .restart local v0       #altOrientation:Z
    :catchall_a0
    move-exception v4

    if-nez p1, :cond_a6

    .line 5399
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5398
    :cond_a6
    throw v4

    .line 5414
    .restart local v1       #i:I
    :cond_a7
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_af
    if-ltz v1, :cond_bf

    .line 5416
    :try_start_b1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IRotationWatcher;

    invoke-interface {v4, v2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_bc} :catch_c2

    .line 5414
    :goto_bc
    add-int/lit8 v1, v1, -0x1

    goto :goto_af

    :cond_bf
    move v4, v5

    .line 5420
    goto/16 :goto_8

    .line 5417
    :catch_c2
    move-exception v4

    goto :goto_bc
.end method

.method updateStatusBarVisibilityLocked(I)V
    .registers 10
    .parameter "visibility"

    .prologue
    .line 9383
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/InputManager;->setSystemUiVisibility(I)V

    .line 9384
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9385
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    if-ge v3, v0, :cond_42

    .line 9386
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 9388
    .local v5, ws:Lcom/android/server/wm/WindowState;
    :try_start_16
    iget v1, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 9389
    .local v1, curValue:I
    xor-int v2, v1, p1

    .line 9392
    .local v2, diff:I
    and-int/lit8 v2, v2, 0x3

    .line 9394
    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v2, v6

    .line 9395
    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    and-int v7, p1, v2

    or-int v4, v6, v7

    .line 9396
    .local v4, newValue:I
    if-eq v4, v1, :cond_30

    .line 9397
    iget v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 9398
    iput v4, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 9400
    :cond_30
    if-ne v4, v1, :cond_38

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, v6, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v6, :cond_3f

    .line 9401
    :cond_38
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v7, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v6, v7, p1, v4, v2}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_3f} :catch_43

    .line 9385
    .end local v1           #curValue:I
    .end local v2           #diff:I
    .end local v4           #newValue:I
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 9408
    .end local v5           #ws:Lcom/android/server/wm/WindowState;
    :cond_42
    return-void

    .line 9404
    .restart local v5       #ws:Lcom/android/server/wm/WindowState;
    :catch_43
    move-exception v6

    goto :goto_3f
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 14
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v9, 0x0

    .line 1913
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1914
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1916
    .local v2, dh:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1917
    .local v5, target:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_1d

    .line 1918
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7f

    .line 1919
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1923
    :cond_13
    :goto_13
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_8a

    .line 1924
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 1930
    :cond_1d
    :goto_1d
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1931
    .local v0, curTokenIndex:I
    :cond_23
    if-lez v0, :cond_d1

    .line 1932
    add-int/lit8 v0, v0, -0x1

    .line 1933
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 1934
    .local v6, token:Lcom/android/server/wm/WindowToken;
    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1935
    .local v1, curWallpaperIndex:I
    :cond_35
    :goto_35
    if-lez v1, :cond_23

    .line 1936
    add-int/lit8 v1, v1, -0x1

    .line 1937
    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1938
    .local v7, wallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v7, v3, v2, p2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 1939
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    .line 1942
    iget v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5e

    iget v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_7d

    .line 1944
    :cond_5e
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 1949
    :try_start_61
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    .line 1950
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iput v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    .line 1951
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_7a} :catch_95

    .line 1958
    :goto_7a
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1961
    :cond_7d
    const/4 p2, 0x0

    goto :goto_35

    .line 1920
    .end local v0           #curTokenIndex:I
    .end local v1           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_7f
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_13

    .line 1921
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    goto :goto_13

    .line 1925
    :cond_8a
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1d

    .line 1926
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1d

    .line 1953
    .restart local v0       #curTokenIndex:I
    .restart local v1       #curWallpaperIndex:I
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    .restart local v7       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_95
    move-exception v4

    .line 1954
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pos=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 1965
    .end local v1           #curWallpaperIndex:I
    .end local v4           #e:Ljava/lang/RuntimeException;
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_d1
    return-void
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z
    .registers 24
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    .line 1827
    const/4 v10, 0x0

    .line 1828
    .local v10, changed:Z
    const/4 v12, 0x0

    .line 1829
    .local v12, rawChanged:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_139

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1830
    .local v15, wpx:F
    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    move/from16 v16, v0

    .line 1831
    .local v16, wpxs:F
    :goto_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v9, v2, p2

    .line 1832
    .local v9, availw:I
    if-lez v9, :cond_141

    int-to-float v2, v9

    mul-float/2addr v2, v15

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    .line 1833
    .local v11, offset:I
    :goto_36
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-eq v2, v11, :cond_144

    const/4 v10, 0x1

    .line 1834
    :goto_3d
    if-eqz v10, :cond_43

    .line 1837
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 1839
    :cond_43
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_53

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_5e

    .line 1840
    :cond_53
    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 1841
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 1842
    const/4 v12, 0x1

    .line 1845
    :cond_5e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_147

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move/from16 v17, v0

    .line 1846
    .local v17, wpy:F
    :goto_6d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_14b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    move/from16 v18, v0

    .line 1847
    .local v18, wpys:F
    :goto_7c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v8, v2, p3

    .line 1848
    .local v8, availh:I
    if-lez v8, :cond_14f

    int-to-float v2, v8

    mul-float v2, v2, v17

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    .line 1849
    :goto_95
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eq v2, v11, :cond_a0

    .line 1852
    const/4 v10, 0x1

    .line 1853
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 1855
    :cond_a0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v17

    if-nez v2, :cond_b0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_bd

    .line 1856
    :cond_b0
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 1857
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 1858
    const/4 v12, 0x1

    .line 1861
    :cond_bd
    if-eqz v12, :cond_138

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_138

    .line 1867
    if-eqz p4, :cond_d1

    .line 1868
    :try_start_cb
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 1870
    :cond_d1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 1873
    if-eqz p4, :cond_138

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_138

    .line 1875
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1876
    .local v13, start:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_fa} :catch_152

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v2, v13

    if-gez v2, :cond_133

    .line 1881
    :try_start_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_10a
    .catch Ljava/lang/InterruptedException; {:try_start_101 .. :try_end_10a} :catch_154
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_10a} :catch_152

    .line 1885
    :goto_10a
    const-wide/16 v2, 0x96

    add-long/2addr v2, v13

    :try_start_10d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_133

    .line 1887
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1892
    :cond_133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_138} :catch_152

    .line 1899
    .end local v13           #start:J
    :cond_138
    :goto_138
    return v10

    .line 1829
    .end local v8           #availh:I
    .end local v9           #availw:I
    .end local v11           #offset:I
    .end local v15           #wpx:F
    .end local v16           #wpxs:F
    .end local v17           #wpy:F
    .end local v18           #wpys:F
    :cond_139
    const/high16 v15, 0x3f00

    goto/16 :goto_f

    .line 1830
    .restart local v15       #wpx:F
    :cond_13d
    const/high16 v16, -0x4080

    goto/16 :goto_1e

    .line 1832
    .restart local v9       #availw:I
    .restart local v16       #wpxs:F
    :cond_141
    const/4 v11, 0x0

    goto/16 :goto_36

    .line 1833
    .restart local v11       #offset:I
    :cond_144
    const/4 v10, 0x0

    goto/16 :goto_3d

    .line 1845
    :cond_147
    const/high16 v17, 0x3f00

    goto/16 :goto_6d

    .line 1846
    .restart local v17       #wpy:F
    :cond_14b
    const/high16 v18, -0x4080

    goto/16 :goto_7c

    .line 1848
    .restart local v8       #availh:I
    .restart local v18       #wpys:F
    :cond_14f
    const/4 v11, 0x0

    goto/16 :goto_95

    .line 1895
    :catch_152
    move-exception v2

    goto :goto_138

    .line 1882
    .restart local v13       #start:J
    :catch_154
    move-exception v2

    goto :goto_10a
.end method

.method updateWallpaperVisibilityLocked()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1968
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 1969
    .local v5, visible:Z
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1970
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1972
    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1973
    .local v0, curTokenIndex:I
    :cond_12
    if-lez v0, :cond_50

    .line 1974
    add-int/lit8 v0, v0, -0x1

    .line 1975
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 1976
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, v5, :cond_29

    .line 1977
    if-nez v5, :cond_4e

    move v7, v8

    :goto_25
    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1980
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1983
    :cond_29
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1984
    .local v1, curWallpaperIndex:I
    :cond_2f
    :goto_2f
    if-lez v1, :cond_12

    .line 1985
    add-int/lit8 v1, v1, -0x1

    .line 1986
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 1987
    .local v6, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_40

    .line 1988
    invoke-virtual {p0, v6, v3, v2, v9}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1991
    :cond_40
    iget-boolean v7, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_2f

    .line 1992
    iput-boolean v5, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 1997
    :try_start_46
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_2f

    .line 1998
    :catch_4c
    move-exception v7

    goto :goto_2f

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_4e
    move v7, v9

    .line 1977
    goto :goto_25

    .line 2003
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_50
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3129
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 3130
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 3131
    .local v0, m:I
    :goto_e
    if-ltz v1, :cond_6a

    if-ltz v0, :cond_6a

    .line 3132
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3133
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_21

    .line 3134
    add-int/lit8 v0, v0, -0x1

    .line 3135
    goto :goto_e

    .line 3137
    :cond_21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_65

    .line 3138
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tokens out of sync: external is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", internal is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    :cond_65
    add-int/lit8 v1, v1, -0x1

    .line 3142
    add-int/lit8 v0, v0, -0x1

    .line 3143
    goto :goto_e

    .line 3144
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_6a
    :goto_6a
    if-ltz v1, :cond_95

    .line 3145
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External token not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    add-int/lit8 v1, v1, -0x1

    goto :goto_6a

    .line 3148
    :cond_95
    :goto_95
    if-ltz v0, :cond_ca

    .line 3149
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3150
    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v3, :cond_c7

    .line 3151
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid internal token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :cond_c7
    add-int/lit8 v0, v0, -0x1

    .line 3154
    goto :goto_95

    .line 3155
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_ca
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 10
    .parameter "client"

    .prologue
    .line 5661
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5662
    const/4 v5, 0x0

    .line 5695
    :cond_7
    :goto_7
    return v5

    .line 5665
    :cond_8
    const/4 v5, 0x1

    .line 5667
    .local v5, result:Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5669
    .local v2, focusedWindow:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 5673
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5674
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_48

    .line 5676
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    if-eqz v2, :cond_39

    .line 5677
    :try_start_20
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5678
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5679
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5681
    :cond_39
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5682
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_63

    .line 5686
    if-eqz v4, :cond_46

    .line 5688
    :try_start_43
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_5d

    :cond_46
    :goto_46
    move-object v3, v4

    .line 5693
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_7

    .line 5683
    .end local v0           #clientStream:Ljava/io/OutputStream;
    :catch_48
    move-exception v1

    .line 5684
    .local v1, e:Ljava/lang/Exception;
    :goto_49
    const/4 v5, 0x0

    .line 5686
    if-eqz v3, :cond_7

    .line 5688
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_7

    .line 5689
    :catch_50
    move-exception v1

    .line 5690
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_7

    .line 5686
    .end local v1           #e:Ljava/io/IOException;
    :catchall_53
    move-exception v6

    :goto_54
    if-eqz v3, :cond_59

    .line 5688
    :try_start_56
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 5686
    :cond_59
    :goto_59
    throw v6

    .line 5689
    :catch_5a
    move-exception v1

    .line 5690
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_59

    .line 5689
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_5d
    move-exception v1

    .line 5690
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_46

    .line 5686
    .end local v1           #e:Ljava/io/IOException;
    :catchall_60
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_54

    .line 5683
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_63
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_49
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 14
    .parameter "client"

    .prologue
    .line 5608
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5609
    const/4 v6, 0x0

    .line 5650
    :cond_7
    :goto_7
    return v6

    .line 5612
    :cond_8
    const/4 v6, 0x1

    .line 5615
    .local v6, result:Z
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5617
    :try_start_c
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wm/WindowState;

    .line 5618
    .local v8, windows:[Lcom/android/server/wm/WindowState;
    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_55

    .line 5620
    const/4 v4, 0x0

    .line 5624
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5625
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_67

    .line 5627
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2e
    array-length v1, v8

    .line 5628
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    if-ge v3, v1, :cond_58

    .line 5629
    aget-object v7, v8, v3

    .line 5630
    .local v7, w:Lcom/android/server/wm/WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5631
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 5632
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5633
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_52} :catch_82

    .line 5628
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 5618
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/wm/WindowState;
    .end local v8           #windows:[Lcom/android/server/wm/WindowState;
    :catchall_55
    move-exception v9

    :try_start_56
    monitor-exit v10
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v9

    .line 5636
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Lcom/android/server/wm/WindowState;
    :cond_58
    :try_start_58
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5637
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_82

    .line 5641
    if-eqz v5, :cond_65

    .line 5643
    :try_start_62
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_7c

    :cond_65
    :goto_65
    move-object v4, v5

    .line 5648
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_7

    .line 5638
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_67
    move-exception v2

    .line 5639
    .local v2, e:Ljava/lang/Exception;
    :goto_68
    const/4 v6, 0x0

    .line 5641
    if-eqz v4, :cond_7

    .line 5643
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_7

    .line 5644
    :catch_6f
    move-exception v2

    .line 5645
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_7

    .line 5641
    .end local v2           #e:Ljava/io/IOException;
    :catchall_72
    move-exception v9

    :goto_73
    if-eqz v4, :cond_78

    .line 5643
    :try_start_75
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    .line 5641
    :cond_78
    :goto_78
    throw v9

    .line 5644
    :catch_79
    move-exception v2

    .line 5645
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_78

    .line 5644
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_7c
    move-exception v2

    .line 5645
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_65

    .line 5641
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catchall_7f
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_73

    .line 5638
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_82
    move-exception v2

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_68
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    .line 5719
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5720
    const/4 v10, 0x0

    .line 5791
    :cond_7
    :goto_7
    return v10

    .line 5723
    :cond_8
    const/4 v10, 0x1

    .line 5724
    .local v10, success:Z
    const/4 v3, 0x0

    .line 5725
    .local v3, data:Landroid/os/Parcel;
    const/4 v9, 0x0

    .line 5727
    .local v9, reply:Landroid/os/Parcel;
    const/4 v7, 0x0

    .line 5732
    .local v7, out:Ljava/io/BufferedWriter;
    const/16 v12, 0x20

    :try_start_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5733
    .local v6, index:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_1b

    .line 5734
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 5736
    :cond_1b
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5737
    .local v2, code:Ljava/lang/String;
    const/16 v12, 0x10

    invoke-static {v2, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    long-to-int v5, v12

    .line 5740
    .local v5, hashCode:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_50

    .line 5741
    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 5746
    :goto_37
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_eb
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3a} :catch_b2

    move-result-object v11

    .line 5747
    .local v11, window:Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_53

    .line 5748
    const/4 v10, 0x0

    .line 5776
    .end local v10           #success:Z
    if-eqz v3, :cond_43

    .line 5777
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5779
    :cond_43
    if-eqz v9, :cond_48

    .line 5780
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5782
    :cond_48
    if-eqz v7, :cond_7

    .line 5784
    :try_start_4a
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_7

    .line 5785
    .end local v2           #code:Ljava/lang/String;
    .end local v5           #hashCode:I
    .end local v6           #index:I
    .end local v11           #window:Lcom/android/server/wm/WindowState;
    :catch_4e
    move-exception v12

    goto :goto_7

    .line 5743
    .restart local v2       #code:Ljava/lang/String;
    .restart local v5       #hashCode:I
    .restart local v6       #index:I
    .restart local v10       #success:Z
    :cond_50
    :try_start_50
    const-string p3, ""

    goto :goto_37

    .line 5751
    .restart local v11       #window:Lcom/android/server/wm/WindowState;
    :cond_53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 5752
    const-string v12, "android.view.IWindow"

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5753
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5754
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5755
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5756
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 5760
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5762
    .local v1, binder:Landroid/os/IBinder;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v3, v9, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5764
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 5766
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v12

    if-nez v12, :cond_a1

    .line 5767
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_98
    .catchall {:try_start_50 .. :try_end_98} :catchall_eb
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_98} :catch_b2

    .line 5768
    .end local v7           #out:Ljava/io/BufferedWriter;
    .local v8, out:Ljava/io/BufferedWriter;
    :try_start_98
    const-string v12, "DONE\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5769
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_fe
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a0} :catch_101

    move-object v7, v8

    .line 5776
    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    :cond_a1
    if-eqz v3, :cond_a6

    .line 5777
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5779
    :cond_a6
    if-eqz v9, :cond_ab

    .line 5780
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5782
    :cond_ab
    if-eqz v7, :cond_7

    .line 5784
    :try_start_ad
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_4e

    goto/16 :goto_7

    .line 5772
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #code:Ljava/lang/String;
    .end local v5           #hashCode:I
    .end local v6           #index:I
    .end local v11           #window:Lcom/android/server/wm/WindowState;
    :catch_b2
    move-exception v4

    .line 5773
    .local v4, e:Ljava/lang/Exception;
    :goto_b3
    :try_start_b3
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not send command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with parameters "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d9
    .catchall {:try_start_b3 .. :try_end_d9} :catchall_eb

    .line 5774
    const/4 v10, 0x0

    .line 5776
    if-eqz v3, :cond_df

    .line 5777
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5779
    :cond_df
    if-eqz v9, :cond_e4

    .line 5780
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5782
    :cond_e4
    if-eqz v7, :cond_7

    .line 5784
    :try_start_e6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_4e

    goto/16 :goto_7

    .line 5776
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_eb
    move-exception v12

    :goto_ec
    if-eqz v3, :cond_f1

    .line 5777
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5779
    :cond_f1
    if-eqz v9, :cond_f6

    .line 5780
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5782
    :cond_f6
    if-eqz v7, :cond_fb

    .line 5784
    :try_start_f8
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_fc

    .line 5776
    :cond_fb
    :goto_fb
    throw v12

    .line 5785
    :catch_fc
    move-exception v13

    goto :goto_fb

    .line 5776
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v2       #code:Ljava/lang/String;
    .restart local v5       #hashCode:I
    .restart local v6       #index:I
    .restart local v8       #out:Ljava/io/BufferedWriter;
    .restart local v11       #window:Lcom/android/server/wm/WindowState;
    :catchall_fe
    move-exception v12

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    goto :goto_ec

    .line 5772
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v8       #out:Ljava/io/BufferedWriter;
    :catch_101
    move-exception v4

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    goto :goto_b3
.end method

.method public waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V
    .registers 10
    .parameter "token"
    .parameter "callback"

    .prologue
    .line 8922
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8923
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_5
    invoke-virtual {p0, v3, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 8924
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_27

    .line 8925
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8927
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8928
    .local v0, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8929
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8930
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 8932
    .end local v0           #m:Landroid/os/Message;
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_27
    monitor-exit v4

    .line 8933
    return-void

    .line 8932
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .parameter "window"
    .parameter "result"

    .prologue
    .line 2482
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2483
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_19

    .line 2485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 2486
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2488
    :cond_19
    monitor-exit v1

    .line 2489
    return-void

    .line 2488
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .parameter "window"

    .prologue
    .line 1903
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1904
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_19

    .line 1906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 1907
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1909
    :cond_19
    monitor-exit v1

    .line 1910
    return-void

    .line 1909
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .registers 7
    .parameter "watcher"

    .prologue
    .line 5428
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5429
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 5445
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5447
    :try_start_c
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 5448
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_20

    .line 5453
    :goto_19
    :try_start_19
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    monitor-exit v3

    return v2

    .line 5454
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v2

    .line 5449
    :catch_20
    move-exception v2

    goto :goto_19
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .registers 9
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v2, 0x0

    .line 7181
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 7184
    .local v1, win:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_35

    .line 7185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7187
    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_2c

    .line 7188
    throw v0

    .line 7190
    :cond_2c
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 7204
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #win:Lcom/android/server/wm/WindowState;
    :cond_34
    :goto_34
    return-object v1

    .line 7193
    .restart local v1       #win:Lcom/android/server/wm/WindowState;
    :cond_35
    if-eqz p1, :cond_34

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_34

    .line 7194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7197
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_6c

    .line 7198
    throw v0

    .line 7200
    :cond_6c
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 7201
    goto :goto_34
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .registers 5
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    .line 7176
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method