.class Lcom/android/server/DirEncryptService;
.super Landroid/os/storage/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;,
        Lcom/android/server/DirEncryptService$MountCallBackBinderListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGE:Z = false

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    .line 75
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    .line 84
    const-string v0, "ro.secdirenc"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-direct {p0}, Landroid/os/storage/IDirEncryptService$Stub;-><init>()V

    .line 85
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 90
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    .line 91
    iput-object v4, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 92
    iput-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 94
    iput-object v4, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 95
    iput-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 96
    iput-object v4, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    .line 198
    new-instance v2, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v2, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    const-string v2, "ctor DirEncryptService....."

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 158
    new-instance v2, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 160
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 161
    .local v0, MS:Landroid/os/storage/IMountService;
    new-instance v2, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    invoke-direct {v2, p0, v4}, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;-><init>(Lcom/android/server/DirEncryptService;Lcom/android/server/DirEncryptService$1;)V

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    .line 164
    if-eqz v0, :cond_43

    :try_start_3e
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_44

    .line 168
    :cond_43
    :goto_43
    return-void

    .line 165
    :catch_44
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method

.method static synthetic access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    return v0
.end method

.method private authByUid(I)Z
    .registers 4
    .parameter "uid"

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 231
    .local v0, myUID:I
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_e

    .line 232
    const/4 v1, 0x1

    .line 235
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private findRequester(I)Ljava/lang/String;
    .registers 7
    .parameter "uidApp"

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 240
    .local v1, myUID:I
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, callingPackageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name uidApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name myUID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 245
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_65

    .line 246
    :cond_5e
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 280
    :goto_64
    return-object v3

    .line 250
    :cond_65
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-eqz v3, :cond_75

    .line 251
    const-string v3, "REQUESTER_UNKNOWN..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 252
    const-string v3, ""

    goto :goto_64

    .line 255
    :cond_75
    if-eq v1, p1, :cond_7e

    .line 256
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 257
    goto :goto_64

    .line 260
    :cond_7e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 261
    .local v2, pid:I
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 265
    if-nez v0, :cond_bc

    .line 267
    const-string v3, "Calling package name is null..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 268
    const-string v3, ""

    goto :goto_64

    .line 271
    :cond_bc
    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 272
    const-string v3, "REQUESTER_USER..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 273
    const-string v3, "user"

    goto :goto_64

    .line 279
    :cond_cc
    const-string v3, "REQUESTER_DM..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 280
    const-string v3, "dm"

    goto :goto_64
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .registers 8
    .parameter "pid"

    .prologue
    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, result:Ljava/lang/String;
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 217
    .local v0, am:Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_26

    .line 218
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 219
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 220
    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_13

    .line 221
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_13

    .line 225
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_26
    return-object v4
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_9
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_9
    return-void
.end method


# virtual methods
.method public encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "path"
    .parameter "password"

    .prologue
    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptStorage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 429
    sget-boolean v6, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v6, :cond_1d

    .line 430
    const/16 v1, 0xc8

    .line 468
    :goto_1c
    return v1

    .line 433
    :cond_1d
    if-nez p2, :cond_27

    .line 434
    const-string v6, "missing password..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 435
    const/16 v1, 0xcb

    goto :goto_1c

    .line 439
    :cond_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 440
    .local v0, requester:I
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v6

    if-nez v6, :cond_39

    .line 441
    const-string v6, "Invalid requester"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 442
    const/16 v1, 0xcc

    goto :goto_1c

    .line 445
    :cond_39
    const/16 v1, 0xc9

    .line 446
    .local v1, result:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 447
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 448
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    const-string v6, "/mnt/sdcard/external_sd"

    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 451
    const/4 v1, 0x0

    .line 452
    const-string v6, "SD card mounted, need unmount..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 453
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 454
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 455
    const/16 v1, 0xb

    .line 467
    :goto_6e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 456
    :cond_72
    const-string v6, "checking"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 457
    const-string v6, "SD card ready, need encrypt cycle..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 458
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 459
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 460
    const/16 v1, 0xb

    goto :goto_6e

    .line 463
    :cond_91
    const-string v6, "SD card not mounted, so not applying policies this time"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 464
    const/16 v1, 0xca

    goto :goto_6e
.end method

.method public getAdditionalSpaceRequired()I
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 6

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 474
    .local v0, result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    sget-boolean v4, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v4, :cond_7

    move-object v1, v0

    .line 487
    .end local v0           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v1, result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :goto_6
    return-object v1

    .line 477
    .end local v1           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 479
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 480
    const-string v4, "EncPrefs found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 481
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 486
    :goto_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v0

    .line 487
    .end local v0           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    goto :goto_6

    .line 483
    .end local v1           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_23
    const-string v4, "EncPrefs not found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 5

    .prologue
    .line 375
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_6

    .line 376
    const/4 v0, 0x0

    .line 385
    :goto_5
    return v0

    .line 378
    :cond_6
    const/4 v0, 0x0

    .line 379
    .local v0, result:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 381
    .local v1, token:J
    const-string v3, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 384
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5
.end method

.method public onDaemonConnected()V
    .registers 2

    .prologue
    .line 139
    const-string v0, " onDaemonConnected ::"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 141
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 144
    const-string v0, "onEvent"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v1, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 287
    return-void
.end method

.method public setPassword(Ljava/lang/String;)I
    .registers 7
    .parameter "password"

    .prologue
    .line 389
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_7

    .line 390
    const/16 v3, 0xc8

    .line 405
    :goto_6
    return v3

    .line 393
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 394
    .local v0, requester:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 396
    .local v1, token:J
    const-string v3, "setPassword....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 399
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 404
    :goto_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    const/16 v3, 0xb

    goto :goto_6

    .line 401
    :cond_2a
    const-string v3, "setPassword error: invalid uid"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .registers 16
    .parameter "encType"
    .parameter "fullEnc"
    .parameter "excludeMediaFiles"

    .prologue
    const/4 v10, 0x4

    const/4 v11, 0x2

    .line 294
    const/16 v4, 0xc8

    .line 295
    .local v4, result:I
    sget-boolean v8, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v8, :cond_a

    move v5, v4

    .line 371
    .end local v4           #result:I
    .local v5, result:I
    :goto_9
    return v5

    .line 298
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setStorageCardEncryption: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 300
    if-eq p1, v11, :cond_4d

    const/4 v8, 0x3

    if-eq p1, v8, :cond_4d

    move v5, v4

    .line 301
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_9

    .line 303
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_4d
    if-eq p2, v10, :cond_54

    const/4 v8, 0x5

    if-eq p2, v8, :cond_54

    move v5, v4

    .line 304
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_9

    .line 306
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_54
    if-ne p2, v10, :cond_5a

    if-eq p1, v11, :cond_5a

    move v5, v4

    .line 307
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_9

    .line 309
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_5a
    const/4 v8, 0x6

    if-eq p3, v8, :cond_62

    const/4 v8, 0x7

    if-eq p3, v8, :cond_62

    move v5, v4

    .line 310
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_9

    .line 313
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_62
    iget-object v9, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v9

    .line 317
    :try_start_65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, requester:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 320
    .local v6, token:J
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v1, p1, p2, p3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 321
    .local v1, newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v8}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 323
    .local v2, oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 324
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 325
    const/4 v8, 0x2

    iput v8, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 326
    const/4 v8, 0x4

    iput v8, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 329
    :cond_93
    invoke-virtual {v2, v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e6

    .line 331
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Called by: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 332
    const-string v8, "user"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 334
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v8, v1}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 335
    const/16 v4, 0x8

    .line 337
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 369
    :cond_c4
    :goto_c4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    monitor-exit v9

    move v5, v4

    .line 371
    .end local v4           #result:I
    .restart local v5       #result:I
    goto/16 :goto_9

    .line 339
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_cb
    const/16 v4, 0x9

    goto :goto_c4

    .line 347
    :cond_ce
    iget v8, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v11, :cond_c4

    .line 349
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v8, v1}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 350
    const/16 v4, 0x8

    .line 352
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    goto :goto_c4

    .line 370
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v1           #newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v2           #oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v3           #requester:Ljava/lang/String;
    .end local v6           #token:J
    :catchall_e0
    move-exception v8

    monitor-exit v9
    :try_end_e2
    .catchall {:try_start_65 .. :try_end_e2} :catchall_e0

    throw v8

    .line 354
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v1       #newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v2       #oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v3       #requester:Ljava/lang/String;
    .restart local v6       #token:J
    :cond_e3
    const/16 v4, 0x9

    goto :goto_c4

    .line 360
    :cond_e6
    :try_start_e6
    iget-object v8, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v8, v1}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    .line 363
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z
    :try_end_ee
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_e0

    move-result v8

    if-nez v8, :cond_f4

    .line 364
    const/16 v4, 0x8

    goto :goto_c4

    .line 366
    :cond_f4
    const/16 v4, 0xa

    goto :goto_c4
.end method

.method public systemReady()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 171
    const-string v2, "DirEncryptService"

    const-string v3, "Calling systemReady"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-boolean v2, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v2, :cond_d

    .line 196
    :goto_c
    return-void

    .line 176
    :cond_d
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 177
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 180
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 182
    :try_start_2b
    new-instance v2, Lcom/android/server/NativeDaemonConnector;

    const-string v3, "dir_enc_report"

    const/16 v4, 0x1f4

    const-string v5, "DirEncryptConnector"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 183
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "DirEncryptConnector"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 184
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 186
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "DirEncryptService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 187
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 188
    new-instance v2, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 190
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_68} :catch_69

    goto :goto_c

    .line 192
    .end local v1           #thread:Ljava/lang/Thread;
    :catch_69
    move-exception v0

    .line 193
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeDaemonConnector exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    goto :goto_c
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 291
    return-void
.end method
