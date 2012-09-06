.class Lcom/android/server/WifiService$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    .line 1751
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1752
    return-void
.end method

.method private getValue()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1770
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 1763
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1765
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$3802(Lcom/android/server/WifiService;Z)Z

    .line 1766
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    .line 1767
    return-void
.end method

.method public register()V
    .registers 4

    .prologue
    .line 1755
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1756
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_networks_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1758
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$3802(Lcom/android/server/WifiService;Z)Z

    .line 1759
    return-void
.end method
