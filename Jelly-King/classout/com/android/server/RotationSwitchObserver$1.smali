.class Lcom/android/server/RotationSwitchObserver$1;
.super Landroid/os/Handler;
.source "RotationSwitchObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RotationSwitchObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RotationSwitchObserver;


# direct methods
.method constructor <init>(Lcom/android/server/RotationSwitchObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/RotationSwitchObserver$1;->this$0:Lcom/android/server/RotationSwitchObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3c

    :goto_6
    return-void

    :pswitch_7
    monitor-enter p0

    :try_start_8
    iget-object v2, p0, Lcom/android/server/RotationSwitchObserver$1;->this$0:Lcom/android/server/RotationSwitchObserver;

    #getter for: Lcom/android/server/RotationSwitchObserver;->mLockState:I
    invoke-static {v2}, Lcom/android/server/RotationSwitchObserver;->access$000(Lcom/android/server/RotationSwitchObserver;)I

    move-result v2

    if-nez v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    if-eqz v0, :cond_38

    const v1, 0x104059e

    :goto_16
    iget-object v2, p0, Lcom/android/server/RotationSwitchObserver$1;->this$0:Lcom/android/server/RotationSwitchObserver;

    #calls: Lcom/android/server/RotationSwitchObserver;->setAutoRotation(Z)V
    invoke-static {v2, v0}, Lcom/android/server/RotationSwitchObserver;->access$100(Lcom/android/server/RotationSwitchObserver;Z)V

    iget-object v2, p0, Lcom/android/server/RotationSwitchObserver$1;->this$0:Lcom/android/server/RotationSwitchObserver;

    #getter for: Lcom/android/server/RotationSwitchObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/RotationSwitchObserver;->access$200(Lcom/android/server/RotationSwitchObserver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RotationSwitchObserver$1;->this$0:Lcom/android/server/RotationSwitchObserver;

    #getter for: Lcom/android/server/RotationSwitchObserver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/RotationSwitchObserver;->access$200(Lcom/android/server/RotationSwitchObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    monitor-exit p0

    goto :goto_6

    :catchall_35
    move-exception v2

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v2

    :cond_38
    const v1, 0x104059f

    goto :goto_16

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method