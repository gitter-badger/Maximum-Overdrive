.class Lcom/android/server/wm/WindowManagerService$WMThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WMThread"
.end annotation


# instance fields
.field private final mAllowBootMessages:Z

.field private final mContext:Landroid/content/Context;

.field private final mHaveInputMethods:Z

.field private final mOnlyCore:Z

.field private final mPM:Lcom/android/server/PowerManagerService;

.field mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)V
    .registers 7

    const-string v0, "WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mHaveInputMethods:Z

    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mAllowBootMessages:Z

    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mOnlyCore:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mHaveInputMethods:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mAllowBootMessages:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mOnlyCore:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZLcom/android/server/wm/WindowManagerService$1;)V

    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    monitor-enter p0

    :try_start_1c
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_33

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "WindowManager"

    const-string v2, "Enabled StrictMode logging for WMThread\'s Looper"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method
