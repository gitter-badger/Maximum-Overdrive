.class Lcom/android/server/ProfileManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ProfileManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ProfileManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 84
    iget-object v1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #calls: Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    invoke-static {v1}, Lcom/android/server/ProfileManagerService;->access$000(Lcom/android/server/ProfileManagerService;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #calls: Lcom/android/server/ProfileManagerService;->initialize()V
    invoke-static {v1}, Lcom/android/server/ProfileManagerService;->access$100(Lcom/android/server/ProfileManagerService;)V

    .line 89
    :cond_16
    :goto_16
    return-void

    .line 86
    :cond_17
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 87
    iget-object v1, p0, Lcom/android/server/ProfileManagerService$1;->this$0:Lcom/android/server/ProfileManagerService;

    #calls: Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    invoke-static {v1}, Lcom/android/server/ProfileManagerService;->access$000(Lcom/android/server/ProfileManagerService;)V

    goto :goto_16
.end method
