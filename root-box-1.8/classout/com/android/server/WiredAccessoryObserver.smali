.class Lcom/android/server/WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final HEADSETS_WITH_MIC:I = 0x1

.field private static final LOG:Z = true

.field private static final MAX_AUDIO_PORTS:I = 0x4

.field private static final SUPPORTED_HEADSETS:I = 0x1f

.field private static final TAG:Ljava/lang/String;

.field private static final uEventInfo:[[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private mPrevHeadsetState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private switchState:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const-class v0, Lcom/android/server/WiredAccessoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DEVPATH=/devices/virtual/switch/h2w"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/h2w/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/h2w/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DEVPATH=/devices/virtual/switch/dock"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/dock/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/dock/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DEVPATH=/devices/virtual/switch/usb_audio"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/usb_audio/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/usb_audio/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DEVPATH=/devices/virtual/switch/hdmi"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/hdmi/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/hdmi/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 302
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    .line 76
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 77
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "WiredAccessoryObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 78
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 80
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;-><init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryObserver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryObserver;->init()V

    return-void
.end method

.method static synthetic access$200()[[Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryObserver;IILjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .registers 10

    .prologue
    .line 146
    monitor-enter p0

    const/16 v7, 0x400

    :try_start_3
    new-array v0, v7, [C

    .line 148
    .local v0, buffer:[C
    iget-object v5, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    .line 149
    .local v5, newName:Ljava/lang/String;
    iget v6, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    .line 150
    .local v6, newState:I
    iget v7, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    iput v7, p0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 152
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "init()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_71

    .line 154
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    const/4 v7, 0x4

    if-ge v3, v7, :cond_7d

    .line 156
    :try_start_18
    new-instance v2, Ljava/io/FileReader;

    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    aget-object v7, v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 158
    .local v4, len:I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 159
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 161
    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    aget-object v7, v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 163
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 164
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 166
    if-lez v6, :cond_65

    .line 167
    invoke-direct {p0, v5, v6}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;I)V
    :try_end_65
    .catchall {:try_start_18 .. :try_end_65} :catchall_71
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_65} :catch_68
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_65} :catch_74

    .line 154
    .end local v2           #file:Ljava/io/FileReader;
    .end local v4           #len:I
    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 170
    :catch_68
    move-exception v1

    .line 171
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_69
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "This kernel does not have wired headset support"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_71

    goto :goto_65

    .line 146
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #i:I
    .end local v5           #newName:Ljava/lang/String;
    .end local v6           #newState:I
    :catchall_71
    move-exception v7

    monitor-exit p0

    throw v7

    .line 172
    .restart local v0       #buffer:[C
    .restart local v3       #i:I
    .restart local v5       #newName:Ljava/lang/String;
    .restart local v6       #newState:I
    :catch_74
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/Exception;
    :try_start_75
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_71

    goto :goto_65

    .line 176
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7d
    monitor-exit p0

    return-void
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .registers 15
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 247
    and-int v3, p2, p1

    and-int v4, p3, p1

    if-eq v3, v4, :cond_a9

    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, state:I
    and-int v3, p2, p1

    if-eqz v3, :cond_14

    .line 250
    const/4 v2, 0x1

    .line 252
    :cond_14
    if-eq p1, v5, :cond_1a

    if-eq p1, v8, :cond_1a

    if-ne p1, v9, :cond_55

    .line 256
    :cond_1a
    if-ne p1, v5, :cond_aa

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 276
    .end local v0           #intent:Landroid/content/Intent;
    :cond_33
    :goto_33
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_USB_HEADSET_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_55
    const/4 v3, 0x1

    if-eq p1, v3, :cond_5b

    const/4 v3, 0x2

    if-ne p1, v3, :cond_a9

    .line 282
    :cond_5b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, microphone:I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_6b

    .line 288
    const/4 v1, 0x1

    .line 291
    :cond_6b
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v3, "microphone"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_HEADSET_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 300
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #microphone:I
    .end local v2           #state:I
    :cond_a9
    return-void

    .line 262
    .restart local v2       #state:I
    :cond_aa
    if-ne p1, v8, :cond_c5

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 268
    .end local v0           #intent:Landroid/content/Intent;
    :cond_c5
    if-ne p1, v9, :cond_33

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method private final declared-synchronized sendIntents(IILjava/lang/String;)V
    .registers 7
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 237
    monitor-enter p0

    const/16 v0, 0x1f

    .line 238
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_4
    if-eqz v0, :cond_13

    .line 239
    and-int v2, v1, v0

    if-eqz v2, :cond_10

    .line 240
    :try_start_a
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_15

    .line 241
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 238
    :cond_10
    shl-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 244
    :cond_13
    monitor-exit p0

    return-void

    .line 237
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .registers 20
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 180
    monitor-enter p0

    and-int/lit8 v5, p2, 0x1f

    .line 181
    .local v5, headsetState:I
    :try_start_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    or-int v7, v5, v11

    .line 182
    .local v7, newOrOld:I
    const/4 v2, 0x0

    .line 183
    .local v2, delay:I
    and-int/lit8 v9, v5, 0x4

    .line 184
    .local v9, usb_headset_anlg:I
    and-int/lit8 v10, v5, 0x8

    .line 185
    .local v10, usb_headset_dgtl:I
    and-int/lit8 v4, v5, 0x3

    .line 186
    .local v4, h2w_headset:I
    const/4 v3, 0x1

    .line 187
    .local v3, h2wStateChange:Z
    const/4 v8, 0x1

    .line 191
    .local v8, usbStateChange:Z
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", headsetState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mHeadsetState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    if-eq v11, v5, :cond_55

    add-int/lit8 v11, v4, -0x1

    and-int/2addr v11, v4

    if-eqz v11, :cond_5d

    .line 194
    :cond_55
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "unsetting h2w flag"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v3, 0x0

    .line 199
    :cond_5d
    shr-int/lit8 v11, v9, 0x2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6f

    shr-int/lit8 v11, v10, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6f

    .line 200
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "unsetting usb flag"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v8, 0x0

    .line 203
    :cond_6f
    if-nez v3, :cond_7c

    if-nez v8, :cond_7c

    .line 204
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "invalid transition, returning ..."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_c7

    .line 234
    :goto_7a
    monitor-exit p0

    return-void

    .line 208
    :cond_7c
    :try_start_7c
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    .line 209
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 210
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    .line 212
    if-nez v5, :cond_ca

    .line 213
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    const/16 v2, 0x3e8

    .line 228
    .end local v6           #intent:Landroid/content/Intent;
    :cond_a0
    :goto_a0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 229
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    int-to-long v13, v2

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c6
    .catchall {:try_start_7c .. :try_end_c6} :catchall_c7

    goto :goto_7a

    .line 180
    .end local v2           #delay:I
    .end local v3           #h2wStateChange:Z
    .end local v4           #h2w_headset:I
    .end local v7           #newOrOld:I
    .end local v8           #usbStateChange:Z
    .end local v9           #usb_headset_anlg:I
    .end local v10           #usb_headset_dgtl:I
    :catchall_c7
    move-exception v11

    monitor-exit p0

    throw v11

    .line 224
    .restart local v2       #delay:I
    .restart local v3       #h2wStateChange:Z
    .restart local v4       #h2w_headset:I
    .restart local v7       #newOrOld:I
    .restart local v8       #usbStateChange:Z
    .restart local v9       #usb_headset_anlg:I
    .restart local v10       #usb_headset_dgtl:I
    :cond_ca
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_c7

    move-result v11

    if-eqz v11, :cond_a0

    .line 225
    const/16 v2, 0x3e8

    goto :goto_a0
.end method

.method private final declared-synchronized updateState(Ljava/lang/String;I)V
    .registers 10
    .parameter "name"
    .parameter "state"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 112
    monitor-enter p0

    :try_start_5
    sget-object v4, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v4, "usb_audio"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 114
    iget v4, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v4, v4, 0x13

    if-ne p2, v0, :cond_5a

    :goto_35
    or-int v0, v4, v3

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    .line 141
    :goto_39
    sget-object v0, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState switchState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/WiredAccessoryObserver;->update(Ljava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_77

    .line 143
    monitor-exit p0

    return-void

    .line 114
    :cond_5a
    if-ne p2, v1, :cond_5f

    const/16 v3, 0x8

    goto :goto_35

    :cond_5f
    move v3, v2

    goto :goto_35

    .line 117
    :cond_61
    :try_start_61
    const-string v4, "dock"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 118
    iget v4, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v4, v4, 0x13

    if-eq p2, v1, :cond_71

    if-ne p2, v0, :cond_72

    :cond_71
    move v2, v3

    :cond_72
    or-int v0, v4, v2

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_77

    goto :goto_39

    .line 112
    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :cond_7a
    :try_start_7a
    const-string v3, "hdmi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 129
    iget v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v1, v1, 0xf

    if-ne p2, v0, :cond_8a

    const/16 v2, 0x10

    :cond_8a
    or-int v0, v1, v2

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    goto :goto_39

    .line 132
    :cond_8f
    const-string v3, "Headset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 133
    iget v0, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v0, v0, 0x1c

    and-int/lit8 v1, p2, 0x3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    goto :goto_39

    .line 136
    :cond_a1
    iget v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v3, v3, 0x1c

    if-ne p2, v0, :cond_ab

    :goto_a7
    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I
    :try_end_aa
    .catchall {:try_start_7a .. :try_end_aa} :catchall_77

    goto :goto_39

    :cond_ab
    if-ne p2, v1, :cond_af

    move v0, v1

    goto :goto_a7

    :cond_af
    move v0, v2

    goto :goto_a7
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    .line 99
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_1c
    const-string v3, "SWITCH_NAME"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, name:Ljava/lang/String;
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, state:I
    invoke-direct {p0, v1, v2}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_2f} :catch_30

    .line 108
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #state:I
    :goto_2f
    return-void

    .line 105
    :catch_30
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method
