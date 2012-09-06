.class public Lcom/android/server/enterprise/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;,
        Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final ACCEPT_ACTION:I = 0x1

.field private static final ADD:I = 0x1

.field private static final ALLOW:I = 0x1

.field private static final DELETE:I = 0x2

.field private static final DENY:I = 0x2

.field private static final DENY_ACTION:I = 0x2

.field private static final IN_DIRECTION:I = 0x2

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final OUT_DIRECTION:I = 0x1

.field private static final PROXY_INDEX:I = 0x3

.field private static final REROUTE:I = 0x0

.field private static final REROUTE_DIRECTION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field private static final TCP_NUMBER:I = 0x1

.field private static final UDP_NUMBER:I = 0x2

.field private static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z


# instance fields
.field private final BOOT_COMPLETED:Ljava/lang/String;

.field private mAllowQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDenyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mHostIndex:I

.field private mHostsList:[Ljava/lang/String;

.field private mIsOnline:Z

.field private mLooperThread:Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

.field private mRerouteQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 43
    sput-boolean v2, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsung_reroute"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "samsung_allow"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "samsung_deny"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "samsung_proxy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 42
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->BOOT_COMPLETED:Ljava/lang/String;

    .line 44
    iput-boolean v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mIsOnline:Z

    .line 68
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "google.com"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "samsung.com"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ebay.com"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "baidu.com"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "facebook.com"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "amazon.com"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "yahoo.com"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "android.com"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ibm.com"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "cnn.com"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "time.com"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "nytimes.com"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mHostsList:[Ljava/lang/String;

    .line 73
    iput v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mHostIndex:I

    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 80
    new-instance v2, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;-><init>(Lcom/android/server/enterprise/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

    .line 81
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->start()V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    .line 86
    new-instance v2, Lcom/android/server/enterprise/FirewallPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, bootFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    new-instance v2, Lcom/android/server/enterprise/FirewallPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/FirewallPolicy$2;-><init>(Lcom/android/server/enterprise/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    new-instance v2, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/FirewallPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->handleConnectivityAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/FirewallPolicy;->addPendingCommand(Ljava/lang/String;I)V

    return-void
.end method

.method private addPendingCommand(Ljava/lang/String;I)V
    .registers 5
    .parameter "command"
    .parameter "type"

    .prologue
    .line 1307
    packed-switch p2, :pswitch_data_40

    .line 1327
    :goto_3
    return-void

    .line 1309
    :pswitch_4
    const-string v0, "FirewallPolicy"

    const-string v1, "allow command enqueued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1311
    :try_start_e
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    monitor-exit v1

    goto :goto_3

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0

    .line 1315
    :pswitch_18
    const-string v0, "FirewallPolicy"

    const-string v1, "deny command enqueued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1317
    :try_start_22
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    monitor-exit v1

    goto :goto_3

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    .line 1321
    :pswitch_2c
    const-string v0, "FirewallPolicy"

    const-string v1, "reroute command enqueued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1323
    :try_start_36
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    monitor-exit v1

    goto :goto_3

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3d

    throw v0

    .line 1307
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_4
        :pswitch_18
    .end packed-switch
.end method

.method private addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z
    .registers 13
    .parameter
    .parameter "uid"
    .parameter "type"
    .parameter "enabled"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .local p5, duplicates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1377
    const/4 v0, 0x0

    .line 1378
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1379
    .local v2, it:Ljava/util/Iterator;
    const/4 v1, -0x1

    .line 1380
    .local v1, index:I
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1381
    add-int/lit8 v1, v1, 0x1

    .line 1382
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1383
    .local v3, rule:Ljava/lang/String;
    invoke-direct {p0, v3, p3}, Lcom/android/server/enterprise/FirewallPolicy;->checkDuplicateRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1387
    :cond_27
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #cv:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1388
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    if-eqz p4, :cond_5d

    .line 1391
    const-string v4, "enabled"

    const-string v6, "true"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    :goto_43
    const-string v4, "type"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const-string v4, "timestamp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1397
    iget-object v4, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    .line 1401
    .end local v3           #rule:Ljava/lang/String;
    :goto_5c
    return v4

    .line 1393
    .restart local v3       #rule:Ljava/lang/String;
    :cond_5d
    const-string v4, "enabled"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 1401
    .end local v3           #rule:Ljava/lang/String;
    :cond_65
    const/4 v4, 0x1

    goto :goto_5c
.end method

.method private applyBasicRules(Ljava/util/List;II)Z
    .registers 19
    .parameter
    .parameter "action"
    .parameter "jumpAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    .line 584
    .local v3, uid:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v2, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v6, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 588
    .local v13, rule:Ljava/lang/String;
    :try_start_1e
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 589
    .local v11, jsonRule:Lorg/json/JSONObject;
    const-string v1, ";"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 590
    .local v12, parameters:[Ljava/lang/String;
    array-length v1, v12

    const/4 v14, 0x2

    if-eq v1, v14, :cond_2f

    .line 591
    const/4 v1, 0x0

    .line 646
    .end local v11           #jsonRule:Lorg/json/JSONObject;
    .end local v12           #parameters:[Ljava/lang/String;
    .end local v13           #rule:Ljava/lang/String;
    :goto_2e
    return v1

    .line 594
    .restart local v11       #jsonRule:Lorg/json/JSONObject;
    .restart local v12       #parameters:[Ljava/lang/String;
    .restart local v13       #rule:Ljava/lang/String;
    :cond_2f
    const/4 v1, 0x0

    aget-object v1, v12, v1

    const-string v14, ":"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, args:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v7, v1

    if-nez v1, :cond_68

    .line 596
    const-string v1, "host"

    const-string v14, ""

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    :goto_44
    const/4 v1, 0x1

    aget-object v1, v7, v1

    if-nez v1, :cond_71

    .line 601
    const-string v1, "port"

    const-string v14, ""

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    :goto_50
    const-string v1, "portLocation"

    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_5b} :catch_5c

    goto :goto_12

    .line 608
    .end local v7           #args:[Ljava/lang/String;
    .end local v11           #jsonRule:Lorg/json/JSONObject;
    .end local v12           #parameters:[Ljava/lang/String;
    :catch_5c
    move-exception v8

    .line 609
    .local v8, e:Lorg/json/JSONException;
    const-string v1, "FirewallPolicy"

    const-string v14, "JSONException..."

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_12

    .line 598
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v7       #args:[Ljava/lang/String;
    .restart local v11       #jsonRule:Lorg/json/JSONObject;
    .restart local v12       #parameters:[Ljava/lang/String;
    :cond_68
    :try_start_68
    const-string v1, "host"

    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_44

    .line 603
    :cond_71
    const-string v1, "port"

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_79} :catch_5c

    goto :goto_50

    .line 613
    .end local v7           #args:[Ljava/lang/String;
    .end local v11           #jsonRule:Lorg/json/JSONObject;
    .end local v12           #parameters:[Ljava/lang/String;
    .end local v13           #rule:Ljava/lang/String;
    :cond_7a
    const-string v4, ""

    .line 614
    .local v4, jumpActionStr:Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_a2

    .line 615
    const-string v4, "allow"

    .line 621
    :goto_83
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v9

    .line 623
    .local v9, enabledUid:I
    if-ne v9, v3, :cond_ac

    .line 624
    const/4 v5, 0x1

    .line 628
    .local v5, enabled:Z
    :goto_8a
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_b1

    move-object v1, p0

    .line 629
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 630
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 631
    if-eqz v5, :cond_ae

    .line 632
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    move-result v1

    goto :goto_2e

    .line 616
    .end local v5           #enabled:Z
    .end local v9           #enabledUid:I
    :cond_a2
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_aa

    .line 617
    const-string v4, "deny"

    goto :goto_83

    .line 619
    :cond_aa
    const/4 v1, 0x0

    goto :goto_2e

    .line 626
    .restart local v9       #enabledUid:I
    :cond_ac
    const/4 v5, 0x0

    .restart local v5       #enabled:Z
    goto :goto_8a

    .line 634
    :cond_ae
    const/4 v1, 0x1

    goto/16 :goto_2e

    .line 637
    :cond_b1
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_c7

    .line 638
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 639
    if-eqz v5, :cond_c4

    .line 640
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    move-result v1

    goto/16 :goto_2e

    .line 642
    :cond_c4
    const/4 v1, 0x1

    goto/16 :goto_2e

    .line 646
    :cond_c7
    const/4 v1, 0x0

    goto/16 :goto_2e
.end method

.method private applyBasicRulesToIptables(Ljava/util/List;II)Z
    .registers 29
    .parameter
    .parameter "action"
    .parameter "jumpAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v21, "FirewallPolicy"

    const-string v22, "applyBasicRulesToIptables..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    const/16 v21, 0x2

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    .line 776
    const/16 v21, 0x0

    .line 929
    :goto_19
    return v21

    .line 778
    :cond_1a
    sget-boolean v21, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v21, :cond_21

    .line 779
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/FirewallPolicy;->createIptablesChains()V

    .line 781
    :cond_21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v6, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v13, ipCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v7, hostCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 785
    .local v14, isHost:Z
    const/16 v20, -0x1

    .line 786
    .local v20, ruleType:I
    const/16 v21, 0x1

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_b2

    .line 787
    const/16 v20, 0x1

    .line 793
    :goto_3d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .local v15, outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .local v10, inCommandBuilder:Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4b
    :goto_4b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5f7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 796
    .local v19, rule:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 798
    const-string v21, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 799
    .local v18, parameters:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 801
    .local v4, args:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v4, v21

    const-string v22, "(.*[a-zA-Z]+.*)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c1

    .line 802
    const/4 v14, 0x1

    .line 806
    :goto_7b
    const/16 v21, 0x0

    aget-object v21, v4, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_db

    const/16 v21, 0x1

    aget-object v21, v4, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_db

    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_db

    .line 807
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_c3

    .line 808
    const-string v21, "/system/bin/iptables -P INPUT DROP"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    const-string v21, "/system/bin/iptables -P OUTPUT DROP"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 788
    .end local v4           #args:[Ljava/lang/String;
    .end local v10           #inCommandBuilder:Ljava/lang/StringBuilder;
    .end local v15           #outCommandBuilder:Ljava/lang/StringBuilder;
    .end local v18           #parameters:[Ljava/lang/String;
    .end local v19           #rule:Ljava/lang/String;
    :cond_b2
    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_bd

    .line 789
    const/16 v20, 0x2

    goto :goto_3d

    .line 791
    :cond_bd
    const/16 v21, 0x0

    goto/16 :goto_19

    .line 804
    .restart local v4       #args:[Ljava/lang/String;
    .restart local v10       #inCommandBuilder:Ljava/lang/StringBuilder;
    .restart local v15       #outCommandBuilder:Ljava/lang/StringBuilder;
    .restart local v18       #parameters:[Ljava/lang/String;
    .restart local v19       #rule:Ljava/lang/String;
    :cond_c1
    const/4 v14, 0x0

    goto :goto_7b

    .line 810
    :cond_c3
    const/16 v21, 0x2

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_4b

    .line 811
    const-string v21, "/system/bin/iptables -P INPUT ACCEPT"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    const-string v21, "/system/bin/iptables -P OUTPUT ACCEPT"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4b

    .line 817
    :cond_db
    const/16 v21, 0x0

    aget-object v21, v4, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ed

    .line 818
    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v4, v21

    .line 820
    :cond_ed
    const/16 v21, 0x1

    aget-object v21, v4, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ff

    .line 821
    const/16 v21, 0x1

    const-string v22, ""

    aput-object v22, v4, v21

    .line 823
    :cond_ff
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const-string v23, "-"

    const-string v24, ":"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v4, v21

    .line 824
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_315

    .line 825
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/iptables -A "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-output"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 827
    .restart local v15       #outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #inCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/iptables -A "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-input"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 837
    .restart local v10       #inCommandBuilder:Ljava/lang/StringBuilder;
    :goto_15f
    const/16 v21, 0x0

    aget-object v21, v4, v21

    if-eqz v21, :cond_36b

    const/16 v21, 0x0

    aget-object v21, v4, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_36b

    .line 838
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v4, v22

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v4, v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :goto_1bf
    const/16 v21, 0x1

    aget-object v21, v4, v21

    if-eqz v21, :cond_5b5

    const/16 v21, 0x1

    aget-object v21, v4, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5b5

    .line 846
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_37b

    .line 847
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget-object v24, v18, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 851
    .local v16, outCommandTcp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget-object v24, v18, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 855
    .local v17, outCommandUdp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    aget-object v24, v18, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 859
    .local v11, inCommandTcp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    aget-object v24, v18, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 863
    .local v12, inCommandUdp:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .end local v11           #inCommandTcp:Ljava/lang/String;
    .end local v12           #inCommandUdp:Ljava/lang/String;
    .end local v16           #outCommandTcp:Ljava/lang/String;
    .end local v17           #outCommandUdp:Ljava/lang/String;
    :goto_2ff
    if-eqz v14, :cond_5e3

    .line 913
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_305
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 914
    .local v5, command:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_305

    .line 829
    .end local v5           #command:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_315
    const/16 v21, 0x2

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_367

    .line 830
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/iptables -D "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-output"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    .restart local v15       #outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #inCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/iptables -D "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-input"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v10       #inCommandBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_15f

    .line 835
    :cond_367
    const/16 v21, 0x0

    goto/16 :goto_19

    .line 841
    :cond_36b
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1bf

    .line 868
    :cond_37b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const-string v24, "remote"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 872
    .restart local v16       #outCommandTcp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const-string v24, "remote"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 876
    .restart local v17       #outCommandUdp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const-string v24, "remote"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 880
    .restart local v11       #inCommandTcp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const-string v24, "remote"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 884
    .restart local v12       #inCommandUdp:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const-string v24, "local"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 892
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const-string v24, "local"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 895
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const-string v24, "local"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 898
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const-string v24, "local"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 901
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ff

    .line 907
    .end local v11           #inCommandTcp:Ljava/lang/String;
    .end local v12           #inCommandUdp:Ljava/lang/String;
    .end local v16           #outCommandTcp:Ljava/lang/String;
    .end local v17           #outCommandUdp:Ljava/lang/String;
    :cond_5b5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ff

    .line 917
    :cond_5e3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_5e7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 918
    .restart local v5       #command:Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e7

    .line 923
    .end local v4           #args:[Ljava/lang/String;
    .end local v5           #command:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v18           #parameters:[Ljava/lang/String;
    .end local v19           #rule:Ljava/lang/String;
    :cond_5f7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_602

    .line 924
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 926
    :cond_602
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_613

    .line 927
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    .line 929
    :cond_613
    const/16 v21, 0x1

    goto/16 :goto_19
.end method

.method private applyProxyRules(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .parameter "hostname"
    .parameter "port"
    .parameter "action"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 725
    const-string v0, "FirewallPolicy"

    const-string v3, "applyProxyRules..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 727
    .local v2, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v7

    .line 728
    .local v7, enabledUid:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v1, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v5, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-ne v7, v2, :cond_30

    .line 732
    const/4 v4, 0x1

    .line 736
    .local v4, enabled:Z
    :goto_1e
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_32

    :cond_2e
    move v0, v10

    .line 769
    :goto_2f
    return v0

    .line 734
    .end local v4           #enabled:Z
    :cond_30
    const/4 v4, 0x0

    .restart local v4       #enabled:Z
    goto :goto_1e

    .line 740
    :cond_32
    :try_start_32
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 741
    .local v8, jsonRule:Lorg/json/JSONObject;
    const-string v0, "host"

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    const-string v0, "port"

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_44} :catch_56

    .line 748
    .end local v8           #jsonRule:Lorg/json/JSONObject;
    :goto_44
    if-ne p3, v9, :cond_66

    .line 749
    const-string v3, "proxy"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 750
    if-eqz v4, :cond_62

    .line 751
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_2f

    .line 744
    :catch_56
    move-exception v6

    .line 745
    .local v6, e:Lorg/json/JSONException;
    const-string v0, "FirewallPolicy"

    const-string v3, "JSONException..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_44

    .end local v6           #e:Lorg/json/JSONException;
    :cond_62
    move v0, v9

    .line 753
    goto :goto_2f

    :cond_64
    move v0, v10

    .line 756
    goto :goto_2f

    .line 758
    :cond_66
    const/4 v0, 0x2

    if-ne p3, v0, :cond_7c

    .line 759
    const-string v0, "proxy"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 760
    if-eqz v4, :cond_78

    .line 761
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_2f

    :cond_78
    move v0, v9

    .line 763
    goto :goto_2f

    :cond_7a
    move v0, v10

    .line 766
    goto :goto_2f

    :cond_7c
    move v0, v10

    .line 769
    goto :goto_2f
.end method

.method private applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .parameter "host"
    .parameter "port"
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1024
    const-string v4, "FirewallPolicy"

    const-string v5, "applyProxyRulesToIptables..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    sget-boolean v4, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v4, :cond_10

    .line 1026
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->createIptablesChains()V

    .line 1028
    :cond_10
    const-string v1, ""

    .line 1029
    .local v1, strAction:Ljava/lang/String;
    if-ne p3, v3, :cond_27

    .line 1030
    const-string v1, "-A"

    .line 1037
    :goto_16
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_26

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    .line 1045
    :cond_26
    :goto_26
    return v2

    .line 1031
    :cond_27
    const/4 v4, 0x2

    if-ne p3, v4, :cond_26

    .line 1032
    const-string v1, "-D"

    goto :goto_16

    .line 1040
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/bin/iptables -t nat "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "OUTPUT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--dport 80 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-j DNAT --to-destination "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, command:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move v2, v3

    .line 1045
    goto :goto_26
.end method

.method private applyRerouteRules(Ljava/util/List;I)Z
    .registers 18
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    .line 651
    .local v3, uid:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v2, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v6, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 654
    .local v14, rule:Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, args:[Ljava/lang/String;
    array-length v1, v7

    const/4 v4, 0x2

    if-ge v1, v4, :cond_2a

    .line 656
    const/4 v1, 0x0

    .line 720
    .end local v7           #args:[Ljava/lang/String;
    .end local v14           #rule:Ljava/lang/String;
    :goto_29
    return v1

    .line 658
    .restart local v7       #args:[Ljava/lang/String;
    .restart local v14       #rule:Ljava/lang/String;
    :cond_2a
    const/4 v1, 0x0

    aget-object v1, v7, v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 659
    .local v13, originArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v7, v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, destArgs:[Ljava/lang/String;
    :try_start_3c
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 662
    .local v12, jsonRule:Lorg/json/JSONObject;
    const/4 v1, 0x0

    aget-object v1, v13, v1

    if-nez v1, :cond_81

    .line 663
    const-string v1, "originHost"

    const-string v4, ""

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    :goto_4d
    const/4 v1, 0x1

    aget-object v1, v13, v1

    if-nez v1, :cond_8a

    .line 668
    const-string v1, "originPort"

    const-string v4, ""

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    :goto_59
    const/4 v1, 0x0

    aget-object v1, v8, v1

    if-nez v1, :cond_93

    .line 673
    const-string v1, "destHost"

    const-string v4, ""

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    :goto_65
    const/4 v1, 0x1

    aget-object v1, v8, v1

    if-nez v1, :cond_9c

    .line 678
    const-string v1, "destPort"

    const-string v4, ""

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    :goto_71
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_74} :catch_75

    goto :goto_12

    .line 683
    .end local v12           #jsonRule:Lorg/json/JSONObject;
    :catch_75
    move-exception v9

    .line 684
    .local v9, e:Lorg/json/JSONException;
    const-string v1, "FirewallPolicy"

    const-string v4, "JSONException..."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_12

    .line 665
    .end local v9           #e:Lorg/json/JSONException;
    .restart local v12       #jsonRule:Lorg/json/JSONObject;
    :cond_81
    :try_start_81
    const-string v1, "originHost"

    const/4 v4, 0x0

    aget-object v4, v13, v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4d

    .line 670
    :cond_8a
    const-string v1, "originPort"

    const/4 v4, 0x1

    aget-object v4, v13, v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_59

    .line 675
    :cond_93
    const-string v1, "destHost"

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_65

    .line 680
    :cond_9c
    const-string v1, "destPort"

    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_a4} :catch_75

    goto :goto_71

    .line 688
    .end local v7           #args:[Ljava/lang/String;
    .end local v8           #destArgs:[Ljava/lang/String;
    .end local v12           #jsonRule:Lorg/json/JSONObject;
    .end local v13           #originArgs:[Ljava/lang/String;
    .end local v14           #rule:Ljava/lang/String;
    :cond_a5
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v10

    .line 690
    .local v10, enabledUid:I
    if-ne v10, v3, :cond_c7

    .line 691
    const/4 v5, 0x1

    .line 695
    .local v5, enabled:Z
    :goto_ac
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_cf

    .line 696
    const-string v4, "reroute"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 697
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 698
    if-eqz v5, :cond_c9

    .line 699
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    move-result v1

    goto/16 :goto_29

    .line 693
    .end local v5           #enabled:Z
    :cond_c7
    const/4 v5, 0x0

    .restart local v5       #enabled:Z
    goto :goto_ac

    .line 701
    :cond_c9
    const/4 v1, 0x1

    goto/16 :goto_29

    .line 704
    :cond_cc
    const/4 v1, 0x0

    goto/16 :goto_29

    .line 706
    :cond_cf
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_ea

    .line 707
    const-string v1, "reroute"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/enterprise/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 708
    if-eqz v5, :cond_e4

    .line 709
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    move-result v1

    goto/16 :goto_29

    .line 712
    :cond_e4
    const/4 v1, 0x1

    goto/16 :goto_29

    .line 716
    :cond_e7
    const/4 v1, 0x0

    goto/16 :goto_29

    .line 720
    :cond_ea
    const/4 v1, 0x0

    goto/16 :goto_29
.end method

.method private applyRerouteRulesToIptables(Ljava/util/List;I)Z
    .registers 25
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "FirewallPolicy"

    const-string v19, "applyRerouteRulesToIptables..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v13, 0x0

    .line 936
    .local v13, isHost:Z
    sget-boolean v18, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v18, :cond_f

    .line 937
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/FirewallPolicy;->createIptablesChains()V

    .line 939
    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v7, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v12, ipCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v9, hostCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, ""

    .line 943
    .local v17, strAction:Ljava/lang/String;
    const-string v15, ""

    .line 945
    .local v15, position:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c4

    .line 946
    const-string v17, "-I"

    .line 947
    const-string v15, "1 "

    .line 954
    :goto_2e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_32
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2d4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 955
    .local v16, rule:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 956
    const-string v18, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, args:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v3, v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 958
    .local v14, originArgs:[Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, v3, v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 960
    .local v8, destArgs:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const-string v19, "(.*[a-zA-Z]+.*)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d5

    .line 961
    const/4 v13, 0x1

    .line 965
    :goto_6c
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7e

    .line 966
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v14, v18

    .line 969
    :cond_7e
    const/16 v18, 0x1

    aget-object v18, v14, v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d8

    .line 970
    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v14, v18

    .line 974
    :goto_90
    const/16 v18, 0x1

    aget-object v18, v8, v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a2

    .line 975
    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v8, v18

    .line 978
    :cond_a2
    const/16 v18, 0x1

    aget-object v18, v14, v18

    if-eqz v18, :cond_1ea

    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1ea

    .line 979
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/iptables -t nat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OUTPUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 984
    .local v5, commandTcp:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/iptables -t nat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OUTPUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 989
    .local v6, commandUdp:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :goto_1ae
    if-eqz v13, :cond_2c0

    .line 1004
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1b4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_32

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1005
    .local v4, command:Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b4

    .line 948
    .end local v3           #args:[Ljava/lang/String;
    .end local v4           #command:Ljava/lang/String;
    .end local v5           #commandTcp:Ljava/lang/String;
    .end local v6           #commandUdp:Ljava/lang/String;
    .end local v8           #destArgs:[Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #originArgs:[Ljava/lang/String;
    .end local v16           #rule:Ljava/lang/String;
    :cond_1c4
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d2

    .line 949
    const-string v17, "-D"

    .line 950
    const-string v15, ""

    goto/16 :goto_2e

    .line 952
    :cond_1d2
    const/16 v18, 0x0

    .line 1020
    :goto_1d4
    return v18

    .line 963
    .restart local v3       #args:[Ljava/lang/String;
    .restart local v8       #destArgs:[Ljava/lang/String;
    .restart local v14       #originArgs:[Ljava/lang/String;
    .restart local v16       #rule:Ljava/lang/String;
    :cond_1d5
    const/4 v13, 0x0

    goto/16 :goto_6c

    .line 972
    :cond_1d8
    const/16 v18, 0x1

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const-string v20, "-"

    const-string v21, ":"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v18

    goto/16 :goto_90

    .line 992
    :cond_1ea
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/iptables -t nat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OUTPUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 996
    .restart local v5       #commandTcp:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/iptables -t nat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OUTPUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1000
    .restart local v6       #commandUdp:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ae

    .line 1008
    :cond_2c0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_2c4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_32

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1009
    .restart local v4       #command:Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c4

    .line 1014
    .end local v3           #args:[Ljava/lang/String;
    .end local v4           #command:Ljava/lang/String;
    .end local v5           #commandTcp:Ljava/lang/String;
    .end local v6           #commandUdp:Ljava/lang/String;
    .end local v8           #destArgs:[Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #originArgs:[Ljava/lang/String;
    .end local v16           #rule:Ljava/lang/String;
    :cond_2d4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2df

    .line 1015
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 1017
    :cond_2df
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2f2

    .line 1018
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    .line 1020
    :cond_2f2
    const/16 v18, 0x1

    goto/16 :goto_1d4
.end method

.method private checkDuplicateRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "rule"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1627
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1628
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "rules"

    aput-object v5, v2, v4

    .line 1631
    .local v2, returnColumns:[Ljava/lang/String;
    const-string v5, "rules =? "

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    const-string v5, "type =? "

    invoke-virtual {v1, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1635
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2a

    .line 1636
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1640
    :goto_29
    return v3

    .line 1639
    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v3, v4

    .line 1640
    goto :goto_29
.end method

.method private checkIptablesCommandResult(Ljava/lang/String;)Z
    .registers 4
    .parameter "result"

    .prologue
    const/4 v0, 0x1

    .line 1297
    if-nez p1, :cond_4

    .line 1303
    :cond_3
    :goto_3
    return v0

    .line 1300
    :cond_4
    const-string v1, "host/network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "not found"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1301
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private checkOnline()V
    .registers 5

    .prologue
    .line 1645
    const-string v2, "FirewallPolicy"

    const-string v3, "checkOnline()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1649
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1650
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1651
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mIsOnline:Z

    .line 1652
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->executePendingCommands()V

    .line 1657
    :goto_23
    return-void

    .line 1654
    :cond_24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mIsOnline:Z

    goto :goto_23
.end method

.method private cleanChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "chain"
    .parameter "table"

    .prologue
    .line 1210
    const-string v0, "FirewallPolicy"

    const-string v1, "cleanChain..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    if-nez p1, :cond_a

    .line 1219
    :goto_9
    return-void

    .line 1214
    :cond_a
    if-nez p2, :cond_23

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9

    .line 1217
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9
.end method

.method private cleanInDb(ILjava/lang/String;)Z
    .registers 6
    .parameter "uid"
    .parameter "type"

    .prologue
    .line 1468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1469
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "FirewallTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    .line 1473
    const/4 v1, 0x1

    return v1
.end method

.method private clearPendingCommands()V
    .registers 3

    .prologue
    .line 1361
    const-string v0, "FirewallPolicy"

    const-string v1, "constructor Before mPendingCommandsLock 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const-string v0, "FirewallPolicy"

    const-string v1, "constructor Before mPendingCommandsLock 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1364
    :try_start_11
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1365
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_2a

    .line 1366
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1367
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1368
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_2d

    .line 1369
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1370
    :try_start_23
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1371
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_30

    .line 1372
    return-void

    .line 1365
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 1368
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0

    .line 1371
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private createIptablesChains()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1222
    const-string v1, "FirewallPolicy"

    const-string v2, "createIptablesChains..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v0, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 1233
    sput-boolean v3, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    .line 1234
    return-void
.end method

.method private createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "chain"
    .parameter "table"

    .prologue
    .line 1237
    if-nez p2, :cond_30

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    :goto_2f
    return-object v0

    .line 1241
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private disableProxyOnIptables(I)Z
    .registers 10
    .parameter "enabledUid"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1064
    const-string v4, "FirewallPolicy"

    const-string v5, "disableProxyOnIptables"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    .line 1066
    .local v3, uid:I
    if-ne p1, v3, :cond_37

    .line 1067
    const-string v4, "proxy"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1068
    .local v2, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_37

    .line 1069
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1070
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 1071
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 1072
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, args:[Ljava/lang/String;
    aget-object v4, v1, v6

    aget-object v5, v1, v7

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1079
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v2           #proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_37
    return v7
.end method

.method private disableRulesOnIptables(I)Z
    .registers 8
    .parameter "enabledUid"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1049
    const-string v1, "FirewallPolicy"

    const-string v2, "disableRulesOnIptables"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 1051
    .local v0, uid:I
    if-ne p1, v0, :cond_89

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v1, "OUTPUT"

    const-string v2, "nat"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v1, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1058
    const-string v1, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1060
    :cond_89
    return v4
.end method

.method private enforceFirewallPermission()I
    .registers 3

    .prologue
    .line 1706
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 1707
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private declared-synchronized executePendingCommands()V
    .registers 9

    .prologue
    .line 1330
    monitor-enter p0

    :try_start_1
    const-string v5, "FirewallPolicy"

    const-string v6, "execute pending commands"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    .local v1, failedCommands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_34

    .line 1335
    :try_start_10
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1336
    .local v3, tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1337
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_37

    .line 1338
    :try_start_1d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1339
    .local v0, command:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_34

    goto :goto_21

    .line 1330
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #failedCommands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_34
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1337
    .restart local v1       #failedCommands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_37
    move-exception v5

    :try_start_38
    monitor-exit v6
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v5

    .line 1342
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    iget-object v6, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v6
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_34

    .line 1343
    :try_start_3d
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_61

    .line 1344
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_44
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1345
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_93

    .line 1347
    :try_start_4a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1348
    .restart local v0       #command:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_34

    goto :goto_4e

    .line 1345
    .end local v0           #command:Ljava/lang/String;
    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_61
    move-exception v5

    :goto_62
    :try_start_62
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v5

    .line 1351
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_64
    iget-object v6, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v6
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_34

    .line 1352
    :try_start_67
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_8b

    .line 1353
    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_6e
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1354
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_91

    .line 1355
    :try_start_74
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1356
    .restart local v0       #command:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_8a
    .catchall {:try_start_74 .. :try_end_8a} :catchall_34

    goto :goto_78

    .line 1354
    .end local v0           #command:Ljava/lang/String;
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_8b
    move-exception v5

    move-object v3, v4

    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_8d
    :try_start_8d
    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_91

    :try_start_8e
    throw v5
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_34

    .line 1358
    :cond_8f
    monitor-exit p0

    return-void

    .line 1354
    :catchall_91
    move-exception v5

    goto :goto_8d

    .line 1345
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_93
    move-exception v5

    move-object v3, v4

    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_62
.end method

.method private getAllRules(I)Ljava/util/List;
    .registers 7
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    .local v3, rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "allow"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1580
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1581
    .local v2, rule:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1583
    .end local v2           #rule:Ljava/lang/String;
    :cond_24
    const-string v4, "deny"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1584
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1585
    .restart local v2       #rule:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1587
    .end local v2           #rule:Ljava/lang/String;
    :cond_3e
    const-string v4, "reroute"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1588
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1589
    .restart local v2       #rule:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 1591
    .end local v2           #rule:Ljava/lang/String;
    :cond_58
    return-object v1
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .registers 13
    .parameter "processResult"

    .prologue
    .line 1660
    const/16 v8, 0x400

    new-array v5, v8, [B

    .line 1661
    .local v5, resultBuffer:[B
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1662
    .local v7, resultString:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1663
    .local v4, readLength:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1664
    .local v6, resultBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1666
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_12
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_44
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_69

    .line 1668
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :goto_20
    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_3d

    .line 1669
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_66
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_20

    .line 1671
    .end local v3           #line:Ljava/lang/String;
    :catch_2a
    move-exception v0

    move-object v1, v2

    .line 1672
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_2c
    :try_start_2c
    const-string v8, "FirewallPolicy"

    const-string v9, "getCommandResult : "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_44

    .line 1675
    if-eqz v1, :cond_38

    .line 1676
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_54

    .line 1682
    .end local v0           #e:Ljava/io/IOException;
    :cond_38
    :goto_38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1675
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3d
    if-eqz v2, :cond_42

    .line 1676
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_5d

    :cond_42
    :goto_42
    move-object v1, v2

    .line 1681
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_38

    .line 1674
    .end local v3           #line:Ljava/lang/String;
    :catchall_44
    move-exception v8

    .line 1675
    :goto_45
    if-eqz v1, :cond_4a

    .line 1676
    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 1674
    :cond_4a
    :goto_4a
    throw v8

    .line 1678
    :catch_4b
    move-exception v0

    .line 1679
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "FirewallPolicy"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1678
    :catch_54
    move-exception v0

    .line 1679
    const-string v8, "FirewallPolicy"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1678
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_5d
    move-exception v0

    .line 1679
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "FirewallPolicy"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1674
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #line:Ljava/lang/String;
    :catchall_66
    move-exception v8

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_45

    .line 1671
    :catch_69
    move-exception v0

    goto :goto_2c
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 1695
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1698
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnabled(ILjava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "uid"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1595
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1596
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v3, listRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "rules"

    aput-object v7, v5, v6

    .line 1600
    .local v5, returnColumns:[Ljava/lang/String;
    const-string v6, "adminUid =? "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    const-string v6, "enabled =? "

    const-string v7, "true"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const-string v6, "proxy"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1603
    const-string v6, "type =? "

    invoke-virtual {v4, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    :goto_2f
    iget-object v6, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "FirewallTable"

    const-string v8, "ruleId"

    invoke-virtual {v6, v7, v5, v4, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1609
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1610
    .local v2, index:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 1611
    :goto_40
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 1612
    const-string v6, "rules"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1614
    :try_start_4c
    new-instance v6, Lorg/json/JSONObject;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_58} :catch_62

    .line 1619
    :goto_58
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_40

    .line 1605
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #index:I
    :cond_5c
    const-string v6, "type !=? "

    invoke-virtual {v4, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1615
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #index:I
    :catch_62
    move-exception v1

    .line 1616
    .local v1, e:Lorg/json/JSONException;
    const-string v6, "FirewallPolicy"

    const-string v7, "JSONException..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_58

    .line 1622
    .end local v1           #e:Lorg/json/JSONException;
    :cond_6e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1623
    return-object v3
.end method

.method private getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .parameter "uid"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1427
    const-string v8, "FirewallPolicy"

    const-string v9, "getRulesFromDb.."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1429
    .local v2, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 1430
    .local v7, returnColumns:[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "rules"

    aput-object v9, v7, v8

    .line 1431
    const-string v8, "type =? "

    invoke-virtual {v2, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    const-string v8, "adminUid =? "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-object v8, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "FirewallTable"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v2, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1435
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v6, resultset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_118

    .line 1437
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1438
    :goto_35
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_115

    .line 1439
    const-string v8, "rules"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1441
    .local v5, jsonString:Ljava/lang/String;
    const-string v3, ""

    .line 1443
    .local v3, hostPort:Ljava/lang/String;
    :try_start_47
    const-string v8, "reroute"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 1444
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1445
    .local v4, json:Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "originHost"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "originPort"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "destHost"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "destPort"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_96} :catch_110

    move-result-object v3

    .line 1459
    .end local v4           #json:Lorg/json/JSONObject;
    :goto_97
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_35

    .line 1448
    :cond_9e
    :try_start_9e
    const-string v8, "allow"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ae

    const-string v8, "deny"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 1449
    :cond_ae
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1450
    .restart local v4       #json:Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "host"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "port"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "portLocation"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1452
    goto :goto_97

    .line 1453
    .end local v4           #json:Lorg/json/JSONObject;
    :cond_e7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1454
    .restart local v4       #json:Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "host"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "port"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10e
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_10e} :catch_110

    move-result-object v3

    goto :goto_97

    .line 1456
    .end local v4           #json:Lorg/json/JSONObject;
    :catch_110
    move-exception v1

    .line 1457
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_97

    .line 1462
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #hostPort:Ljava/lang/String;
    .end local v5           #jsonString:Ljava/lang/String;
    :cond_115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1464
    :cond_118
    return-object v6
.end method

.method private handleConnectivityAction()V
    .registers 3

    .prologue
    .line 1689
    const-string v0, "FirewallPolicy"

    const-string v1, "Entering handleConnectivityAction..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->checkOnline()V

    .line 1691
    return-void
.end method

.method private ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "ipRange"
    .parameter "direction"

    .prologue
    .line 1083
    const/4 v1, 0x0

    .line 1084
    .local v1, isIpRange:Z
    const/4 v0, 0x0

    .line 1085
    .local v0, command:Ljava/lang/String;
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 1086
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 1088
    const/4 v1, 0x1

    .line 1095
    :goto_14
    packed-switch p2, :pswitch_data_c2

    :goto_17
    move-object v2, v0

    .line 1118
    :goto_18
    return-object v2

    .line 1090
    :cond_19
    const/4 v1, 0x0

    goto :goto_14

    .line 1093
    :cond_1b
    const-string v2, ""

    goto :goto_18

    .line 1097
    :pswitch_1e
    if-nez v1, :cond_3a

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1100
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-m iprange --dst-range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    goto :goto_17

    .line 1104
    :pswitch_54
    if-nez v1, :cond_70

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1107
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-m iprange --src-range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    goto :goto_17

    .line 1111
    :pswitch_8a
    if-nez v1, :cond_a7

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 1114
    :cond_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-m iprange --dst-range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 1095
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_54
        :pswitch_8a
    .end packed-switch
.end method

.method private jumpCommandPart(I)Ljava/lang/String;
    .registers 3
    .parameter "action"

    .prologue
    .line 1184
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1185
    const-string v0, "-j ACCEPT"

    .line 1189
    :goto_5
    return-object v0

    .line 1186
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1187
    const-string v0, "-j DROP"

    goto :goto_5

    .line 1189
    :cond_c
    const-string v0, ""

    goto :goto_5
.end method

.method private portCommandPart(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "portRange"
    .parameter "direction"

    .prologue
    .line 1122
    const-string v0, "remote"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "portRange"
    .parameter "direction"
    .parameter "portLocation"

    .prologue
    .line 1129
    const/4 v0, 0x0

    .line 1130
    .local v0, command:Ljava/lang/String;
    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a1

    .line 1131
    packed-switch p2, :pswitch_data_a6

    :goto_c
    move-object v1, v0

    .line 1158
    :goto_d
    return-object v1

    .line 1133
    :pswitch_e
    const-string v1, "local"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1134
    const-string v0, "--sport "

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1137
    :cond_30
    const-string v0, "--dport "

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1140
    goto :goto_c

    .line 1142
    :pswitch_4a
    const-string v1, "local"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1143
    const-string v0, "--dport "

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1146
    :cond_6c
    const-string v0, "--sport "

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    goto :goto_c

    .line 1151
    :pswitch_86
    const-string v0, "--dport "

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1156
    :cond_a1
    const-string v1, " "

    goto/16 :goto_d

    .line 1131
    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_e
        :pswitch_4a
        :pswitch_86
    .end packed-switch
.end method

.method private protocolCommandPart(I)Ljava/lang/String;
    .registers 6
    .parameter "protocol"

    .prologue
    const/4 v1, 0x0

    .line 1165
    const-string v0, "-p "

    .line 1166
    .local v0, command:Ljava/lang/String;
    if-lez p1, :cond_f

    .line 1167
    packed-switch p1, :pswitch_data_3a

    .line 1175
    const-string v2, "FirewallPolicy"

    const-string v3, "Invalid protocol"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_f
    :goto_f
    return-object v1

    .line 1169
    :pswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tcp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1170
    goto :goto_f

    .line 1172
    :pswitch_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "udp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1173
    goto :goto_f

    .line 1167
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_25
    .end packed-switch
.end method

.method private reApplyRerouteRules()V
    .registers 4

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 363
    .local v0, olfRerouteUid:I
    const-string v2, "reroute"

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 364
    .local v1, rerouteRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    .line 365
    return-void
.end method

.method private reapplyProxyRules()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v2

    .line 347
    .local v2, oldProxyUid:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_30

    .line 348
    const-string v4, "proxy"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 349
    .local v3, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 350
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 352
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_30

    .line 353
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, args:[Ljava/lang/String;
    aget-object v4, v1, v5

    aget-object v5, v1, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 359
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v3           #proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_30
    return-void
.end method

.method private removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1405
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, duplicates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1406
    .local v0, delta:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1407
    .local v2, index:I
    sub-int v3, v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1408
    sub-int v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1412
    .end local v2           #index:I
    :cond_25
    return-void
.end method

.method private removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z
    .registers 9
    .parameter
    .parameter "uid"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1415
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1416
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1417
    .local v2, rule:Lorg/json/JSONObject;
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    const-string v3, "rules"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    const-string v3, "type"

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "FirewallTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    .line 1421
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_9

    .line 1423
    .end local v2           #rule:Lorg/json/JSONObject;
    :cond_37
    const/4 v3, 0x1

    return v3
.end method

.method private rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "host"
    .parameter "port"

    .prologue
    .line 1194
    if-eqz p1, :cond_42

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    .line 1195
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-j DNAT --to-destination "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    :goto_2d
    return-object v0

    .line 1198
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-j DNAT --to-destination "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1201
    :cond_42
    if-eqz p2, :cond_66

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_66

    .line 1202
    const-string v0, "-"

    const-string v1, ":"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-j REDIRECT --to-port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1206
    :cond_66
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private rollbackEnabled()V
    .registers 3

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 568
    .local v0, oldUid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 569
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZI)Z

    .line 571
    :cond_b
    return-void
.end method

.method private rollbackProxyEnabled()V
    .registers 3

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 575
    .local v0, oldUid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 576
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZI)Z

    .line 578
    :cond_b
    return-void
.end method

.method private runIptablesCommands(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;
    .registers 8
    .parameter
    .parameter "isHostName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1257
    .local v0, command:Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1259
    .end local v0           #command:Ljava/lang/String;
    :cond_1d
    return-object v2
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "command"

    .prologue
    .line 1263
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 5
    .parameter "command"
    .parameter "isHostName"
    .parameter "type"

    .prologue
    .line 1267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    .registers 15
    .parameter "command"
    .parameter "isHostName"
    .parameter "type"
    .parameter "pending"

    .prologue
    .line 1273
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v4, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, commandArray:[Ljava/lang/String;
    const-string v8, ""

    .line 1276
    .local v8, result:Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_10
    if-ge v5, v6, :cond_1a

    aget-object v2, v0, v5

    .line 1277
    .local v2, commandArg:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1281
    .end local v2           #commandArg:Ljava/lang/String;
    :cond_1a
    if-eqz p2, :cond_20

    iget-boolean v9, p0, Lcom/android/server/enterprise/FirewallPolicy;->mIsOnline:Z

    if-eqz v9, :cond_3f

    .line 1282
    :cond_20
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1283
    .local v7, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1284
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "command"

    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v9, "type"

    invoke-virtual {v1, v9, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1286
    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1287
    iget-object v9, p0, Lcom/android/server/enterprise/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

    iget-object v9, v9, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1293
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #msg:Landroid/os/Message;
    :cond_3e
    :goto_3e
    return-object v8

    .line 1289
    :cond_3f
    if-nez p4, :cond_3e

    .line 1290
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/FirewallPolicy;->addPendingCommand(Ljava/lang/String;I)V

    goto :goto_3e
.end method

.method private setEnableOnDb(ZLjava/lang/String;I)Z
    .registers 24
    .parameter "status"
    .parameter "type"
    .parameter "uid"

    .prologue
    .line 1477
    const-string v17, "FirewallPolicy"

    const-string v18, "setEnableOnDb..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1479
    .local v5, cv:Landroid/content/ContentValues;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1480
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "adminUid =? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    const-string v17, "proxy"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1482
    .local v9, isProxy:Z
    if-eqz v9, :cond_b6

    .line 1483
    const-string v17, "type =? "

    const-string v18, "proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    :goto_35
    if-eqz p1, :cond_d2

    .line 1489
    const-string v17, "enabled"

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 1491
    .local v14, timestamp:J
    const-string v17, "timestamp"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "FirewallTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v16

    .line 1493
    .local v16, updated:I
    if-lez v16, :cond_cf

    .line 1495
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1496
    .local v6, helpCv:Landroid/content/ContentValues;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1497
    .local v7, helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "enabled"

    const-string v18, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const-string v17, "adminUid !=? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    const-string v17, "enabled =? "

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    if-eqz v9, :cond_c3

    .line 1501
    const-string v17, "type =? "

    const-string v18, "proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    :goto_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "FirewallTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    .line 1533
    .end local v6           #helpCv:Landroid/content/ContentValues;
    .end local v7           #helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #timestamp:J
    .end local v16           #updated:I
    :goto_b3
    const/16 v17, 0x1

    :goto_b5
    return v17

    .line 1485
    :cond_b6
    const-string v17, "type !=? "

    const-string v18, "proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 1503
    .restart local v6       #helpCv:Landroid/content/ContentValues;
    .restart local v7       #helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #timestamp:J
    .restart local v16       #updated:I
    :cond_c3
    const-string v17, "type !=? "

    const-string v18, "proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 1507
    .end local v6           #helpCv:Landroid/content/ContentValues;
    .end local v7           #helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_cf
    const/16 v17, 0x0

    goto :goto_b5

    .line 1511
    .end local v14           #timestamp:J
    .end local v16           #updated:I
    :cond_d2
    const-string v17, "enabled"

    const-string v18, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const-string v17, "timestamp"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "FirewallTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v17

    if-lez v17, :cond_165

    .line 1515
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    aput-object v18, v13, v17

    const/16 v17, 0x1

    const-string v18, "timestamp"

    aput-object v18, v13, v17

    .line 1518
    .local v13, returnColumns:[Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1519
    .local v11, myMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "adminUid !=? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "FirewallTable"

    const-string v19, "timestamp"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v13, v11, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1523
    .local v4, cursor:Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_160

    .line 1524
    const-string v17, "adminUid"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1525
    .local v8, index:I
    new-instance v12, Ljava/lang/Integer;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1526
    .local v12, myUid:Ljava/lang/Integer;
    const/16 v17, 0x1

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    .line 1528
    .end local v8           #index:I
    .end local v12           #myUid:Ljava/lang/Integer;
    :cond_160
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b3

    .line 1530
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v11           #myMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #returnColumns:[Ljava/lang/String;
    :cond_165
    const/16 v17, 0x0

    goto/16 :goto_b5
.end method


# virtual methods
.method public addAllowRules(Ljava/util/List;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRules(Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method public addDenyRules(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "FirewallPolicy"

    const-string v1, "addDenyRules..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRules(Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method public addRerouteRules(Ljava/util/List;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRules(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public cleanAllRules()Z
    .registers 2

    .prologue
    .line 368
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanAllRules(I)Z
    .registers 5
    .parameter "uid"

    .prologue
    .line 372
    const-string v1, "FirewallPolicy"

    const-string v2, "cleanAllRules()... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x1

    .line 374
    .local v0, ret:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllowRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanDenyRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanRerouteRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 377
    return v0
.end method

.method public cleanAllowRules()Z
    .registers 2

    .prologue
    .line 139
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllowRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanAllowRules(I)Z
    .registers 8
    .parameter "uid"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 143
    const-string v2, "FirewallPolicy"

    const-string v3, "cleanAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    .line 145
    const/4 v2, -0x1

    if-ne p1, v2, :cond_13

    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 148
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 150
    .local v0, enabledUid:I
    const-string v2, "allow"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 151
    if-ne v0, p1, :cond_68

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->getAllRules(I)Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v3

    .line 157
    :try_start_59
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 158
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_69

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_68

    .line 161
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackEnabled()V

    .line 164
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_68
    return v4

    .line 158
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public cleanDenyRules()Z
    .registers 2

    .prologue
    .line 246
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanDenyRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanDenyRules(I)Z
    .registers 8
    .parameter "uid"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 250
    const-string v2, "FirewallPolicy"

    const-string v3, "cleanDenyRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    .line 252
    const/4 v2, -0x1

    if-ne p1, v2, :cond_13

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 255
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 256
    .local v0, enabledUid:I
    const-string v2, "deny"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 257
    if-ne v0, p1, :cond_72

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const-string v2, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v3

    .line 264
    :try_start_5f
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 265
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_74

    .line 266
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->getAllRules(I)Ljava/util/List;

    move-result-object v1

    .line 267
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_72

    .line 269
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackEnabled()V

    .line 272
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_72
    const/4 v2, 0x1

    return v2

    .line 265
    :catchall_74
    move-exception v2

    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v2
.end method

.method public cleanProxyRules()Z
    .registers 2

    .prologue
    .line 416
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanProxyRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanProxyRules(I)Z
    .registers 12
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 420
    const-string v5, "FirewallPolicy"

    const-string v6, "cleanProxyRules..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    .line 422
    if-ne p1, v9, :cond_13

    .line 423
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 425
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v4

    .line 426
    .local v4, proxyUid:I
    const-string v5, "proxy"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 427
    .local v3, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "proxy"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 428
    if-ne v4, p1, :cond_46

    .line 429
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_46

    .line 430
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 431
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_46

    .line 433
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, args:[Ljava/lang/String;
    aget-object v5, v1, v7

    aget-object v6, v1, v8

    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 439
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v2

    .line 440
    .local v2, oldUid:I
    if-eq v2, v9, :cond_4f

    .line 441
    invoke-virtual {p0, v8, p1}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxyWithUid(ZI)Z

    .line 443
    :cond_4f
    return v8
.end method

.method public cleanRerouteRules()Z
    .registers 2

    .prologue
    .line 312
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanRerouteRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanRerouteRules(I)Z
    .registers 6
    .parameter "uid"

    .prologue
    .line 316
    const-string v2, "FirewallPolicy"

    const-string v3, "cleanRerouteRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    .line 318
    const/4 v2, -0x1

    if-ne p1, v2, :cond_11

    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 322
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 323
    .local v0, enabledUid:I
    const-string v2, "reroute"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 324
    if-ne v0, p1, :cond_3c

    .line 325
    const-string v2, "OUTPUT"

    const-string v3, "nat"

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v3

    .line 329
    :try_start_26
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 330
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3e

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->getAllRules(I)Ljava/util/List;

    move-result-object v1

    .line 332
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_39

    .line 334
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackEnabled()V

    .line 339
    :cond_39
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->reapplyProxyRules()V

    .line 342
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3c
    const/4 v2, 0x1

    return v2

    .line 330
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public enableProxy(Z)Z
    .registers 3
    .parameter "status"

    .prologue
    .line 512
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZI)Z

    move-result v0

    return v0
.end method

.method public enableProxy(ZI)Z
    .registers 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(ZIZ)Z
    .registers 13
    .parameter "status"
    .parameter "uid"
    .parameter "boot"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 524
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 525
    .local v2, callingUid:I
    const/4 v7, -0x1

    if-ne p2, v7, :cond_a

    .line 526
    move p2, v2

    .line 529
    :cond_a
    if-eqz p1, :cond_46

    .line 531
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v7

    if-ne p2, v7, :cond_14

    if-eqz p3, :cond_43

    .line 532
    :cond_14
    const-string v7, "proxy"

    invoke-direct {p0, v5, v7, p2}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 533
    const-string v7, "proxy"

    invoke-direct {p0, p2, v7}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 534
    .local v4, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_43

    .line 535
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_43

    .line 537
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_43

    .line 538
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, args:[Ljava/lang/String;
    aget-object v6, v1, v6

    aget-object v7, v1, v5

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 563
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v4           #proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_43
    :goto_43
    return v5

    :cond_44
    move v5, v6

    .line 544
    goto :goto_43

    .line 551
    :cond_46
    const-string v7, "FirewallPolicy"

    const-string v8, "enableProxy disable..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v3

    .line 553
    .local v3, enabledUid:I
    const-string v7, "proxy"

    invoke-direct {p0, v6, v7, p2}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 554
    if-ne v3, p2, :cond_43

    .line 555
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/FirewallPolicy;->disableProxyOnIptables(I)Z

    .line 557
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackProxyEnabled()V

    goto :goto_43

    :cond_62
    move v5, v6

    .line 560
    goto :goto_43
.end method

.method public enableProxyWithUid(ZI)Z
    .registers 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(Z)Z
    .registers 4
    .parameter "status"

    .prologue
    .line 452
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(ZI)Z
    .registers 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(ZIZ)Z
    .registers 14
    .parameter "status"
    .parameter "uid"
    .parameter "boot"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 464
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 465
    .local v1, callingUid:I
    const/4 v7, -0x1

    if-ne p2, v7, :cond_c

    .line 466
    move p2, v1

    .line 469
    :cond_c
    if-eqz p1, :cond_b1

    .line 471
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v7

    if-ne p2, v7, :cond_16

    if-eqz p3, :cond_ae

    .line 472
    :cond_16
    const-string v7, "noProxy"

    invoke-direct {p0, v5, v7, p2}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 473
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->clearPendingCommands()V

    .line 474
    const-string v6, "allow"

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    .local v0, allowRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-input"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-output"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0, v0, v5, v5}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    .line 478
    const-string v6, "deny"

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 479
    .local v2, denyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-input"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-output"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, v2, v5, v9}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    .line 482
    const-string v6, "OUTPUT"

    const-string v7, "nat"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v6, "reroute"

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 484
    .local v4, rerouteRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    .line 485
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->reapplyProxyRules()V

    .line 508
    .end local v0           #allowRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #denyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #rerouteRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_ae
    :goto_ae
    return v5

    :cond_af
    move v5, v6

    .line 487
    goto :goto_ae

    .line 493
    :cond_b1
    const-string v7, "FirewallPolicy"

    const-string v8, "enableRules disable..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v3

    .line 496
    .local v3, enabledUid:I
    const-string v7, "noProxy"

    invoke-direct {p0, v6, v7, p2}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d3

    .line 497
    if-ne v3, p2, :cond_ae

    .line 498
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/FirewallPolicy;->disableRulesOnIptables(I)Z

    .line 499
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->clearPendingCommands()V

    .line 500
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->reapplyProxyRules()V

    .line 502
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackEnabled()V

    goto :goto_ae

    :cond_d3
    move v5, v6

    .line 505
    goto :goto_ae
.end method

.method public enableRulesWithUid(ZI)Z
    .registers 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public getAllRulesForUid()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v4

    .line 218
    .local v4, uid:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v3, rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "allow"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, rule:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";allow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 224
    .end local v2           #rule:Ljava/lang/String;
    :cond_3b
    const-string v5, "deny"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    .restart local v2       #rule:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";deny"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 228
    .end local v2           #rule:Ljava/lang/String;
    :cond_68
    const-string v5, "reroute"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 229
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .restart local v2       #rule:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";reroute"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 232
    .end local v2           #rule:Ljava/lang/String;
    :cond_95
    return-object v1
.end method

.method public getAllowRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 185
    .local v0, uid:I
    const-string v1, "allow"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getDenyRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 292
    .local v0, uid:I
    const-string v1, "deny"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getLastUidForProxy()I
    .registers 9

    .prologue
    .line 1557
    const-string v5, "FirewallPolicy"

    const-string v6, "getLastUidForProxy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1559
    .local v1, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 1560
    .local v3, returnColumns:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v3, v5

    .line 1561
    const-string v5, "type =? "

    const-string v6, "proxy"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    const-string v5, "enabled =? "

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1566
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1567
    const-string v5, "adminUid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1568
    .local v2, index:I
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1572
    .end local v2           #index:I
    .local v4, uid:Ljava/lang/Integer;
    :goto_40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1573
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 1570
    .end local v4           #uid:Ljava/lang/Integer;
    :cond_48
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #uid:Ljava/lang/Integer;
    goto :goto_40
.end method

.method public getLastUidForRules()I
    .registers 9

    .prologue
    .line 1537
    const-string v5, "FirewallPolicy"

    const-string v6, "getLastUidForRules"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1539
    .local v1, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 1540
    .local v3, returnColumns:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v3, v5

    .line 1541
    const-string v5, "type !=? "

    const-string v6, "proxy"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const-string v5, "enabled =? "

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1546
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1547
    const-string v5, "adminUid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1548
    .local v2, index:I
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1552
    .end local v2           #index:I
    .local v4, uid:Ljava/lang/Integer;
    :goto_40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1553
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 1550
    .end local v4           #uid:Ljava/lang/Integer;
    :cond_48
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #uid:Ljava/lang/Integer;
    goto :goto_40
.end method

.method public getProxyRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 448
    .local v0, uid:I
    const-string v1, "proxy"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getRerouteRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 397
    .local v0, uid:I
    const-string v1, "reroute"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public isEnabledProxy()Z
    .registers 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 207
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 210
    .local v0, enabledUid:I
    if-ne v1, v0, :cond_c

    .line 211
    const/4 v2, 0x1

    .line 213
    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public isEnabledRules()Z
    .registers 4

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 193
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 196
    .local v0, enabledUid:I
    if-ne v1, v0, :cond_c

    .line 197
    const/4 v2, 0x1

    .line 199
    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public removeAdmin(I)Z
    .registers 5
    .parameter "uid"

    .prologue
    .line 304
    const-string v1, "FirewallPolicy"

    const-string v2, "removeAdmin..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x1

    .line 306
    .local v0, ret:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanProxyRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 308
    return v0
.end method

.method public removeAllowRules(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRules(Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method public removeDenyRules(Ljava/util/List;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    .line 236
    const-string v0, "FirewallPolicy"

    const-string v1, "removeDenyRules..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRules(Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method public removeRerouteRules(Ljava/util/List;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRules(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setAllowRules(Ljava/util/List;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 168
    const-string v3, "FirewallPolicy"

    const-string v4, "setAllowRules..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 170
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 171
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllowRules()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->addAllowRules(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 173
    if-ne v0, v1, :cond_21

    .line 174
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZI)Z

    .line 179
    :cond_21
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public setDenyRules(Ljava/util/List;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 276
    const-string v3, "FirewallPolicy"

    const-string v4, "setDenyRules..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 278
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 279
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanDenyRules()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->addDenyRules(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 281
    if-ne v0, v1, :cond_21

    .line 282
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZI)Z

    .line 287
    :cond_21
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public setFirewallRules(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    .local p1, iptTablesCmd:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "hostname"
    .parameter "port"

    .prologue
    const/4 v2, 0x1

    .line 401
    const-string v3, "FirewallPolicy"

    const-string v4, "setProxyRules..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 403
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 404
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanProxyRules()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 405
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRules(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 406
    if-ne v0, v1, :cond_21

    .line 407
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZI)Z

    .line 412
    :cond_21
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public setRerouteRules(Ljava/util/List;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 381
    const-string v3, "FirewallPolicy"

    const-string v4, "setRerouteRules..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 383
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 384
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanRerouteRules()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->addRerouteRules(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 386
    if-ne v0, v1, :cond_21

    .line 387
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZI)Z

    .line 392
    :cond_21
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method
