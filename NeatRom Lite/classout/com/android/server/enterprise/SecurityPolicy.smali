.class public Lcom/android/server/enterprise/SecurityPolicy;
.super Landroid/app/enterprise/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"


# static fields
.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final LS_COMMAND:I = 0x0

.field private static final LS_LA_COMMAND:I = 0x1

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"


# instance fields
.field mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mMediaFormatRet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/SecurityPolicy;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method private enforceSecurityPermission()I
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .registers 12
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
    .line 801
    .local p1, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 802
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v6, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 804
    .local v2, readLength:I
    const/4 v3, 0x0

    .line 806
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_a
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 808
    .local v1, process:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 809
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_30} :catch_93
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_30} :catch_54

    .line 810
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 811
    .local v5, resultLine:Ljava/lang/String;
    :goto_31
    :try_start_31
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 812
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3a} :catch_90

    goto :goto_31

    .line 814
    :catch_3b
    move-exception v0

    move-object v3, v4

    .line 815
    .end local v1           #process:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #resultLine:Ljava/lang/String;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_3d
    :try_start_3d
    const-string v7, "SecurityPolicy"

    const-string v8, "executeCommand failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_6e

    .line 822
    if-eqz v3, :cond_4c

    .line 823
    :try_start_49
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_7e

    .line 829
    .end local v0           #e:Ljava/io/IOException;
    :cond_4c
    :goto_4c
    return-object v6

    .line 822
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #resultLine:Ljava/lang/String;
    :cond_4d
    if-eqz v4, :cond_52

    .line 823
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_84

    :cond_52
    :goto_52
    move-object v3, v4

    .line 828
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_4c

    .line 817
    .end local v1           #process:Ljava/lang/Process;
    .end local v5           #resultLine:Ljava/lang/String;
    :catch_54
    move-exception v0

    .line 818
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_55
    :try_start_55
    const-string v7, "SecurityPolicy"

    const-string v8, "executeCommand failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_6e

    .line 822
    if-eqz v3, :cond_4c

    .line 823
    :try_start_61
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_4c

    .line 825
    :catch_65
    move-exception v0

    .line 826
    .local v0, e:Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    :goto_6a
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 821
    .end local v0           #e:Ljava/io/IOException;
    :catchall_6e
    move-exception v7

    .line 822
    :goto_6f
    if-eqz v3, :cond_74

    .line 823
    :try_start_71
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    .line 821
    :cond_74
    :goto_74
    throw v7

    .line 825
    :catch_75
    move-exception v0

    .line 826
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "SecurityPolicy"

    const-string v9, ""

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    .line 825
    :catch_7e
    move-exception v0

    .line 826
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    goto :goto_6a

    .line 825
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #resultLine:Ljava/lang/String;
    :catch_84
    move-exception v0

    .line 826
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 821
    .end local v0           #e:Ljava/io/IOException;
    :catchall_8d
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_6f

    .line 817
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_90
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_55

    .line 814
    .end local v1           #process:Ljava/lang/Process;
    .end local v5           #resultLine:Ljava/lang/String;
    :catch_93
    move-exception v0

    goto :goto_3d
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 81
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 84
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p1, :cond_4

    .line 102
    :cond_3
    :goto_3
    return-object v1

    .line 98
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p1

    goto :goto_3

    .line 99
    :catch_10
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string v3, "is string valid?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "oldpassword"
    .parameter "newpassword"

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates()Z
    .registers 13

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 675
    const/4 v7, 0x1

    .line 677
    .local v7, ret:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 681
    .local v8, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, names:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1a
    if-ge v1, v4, :cond_37

    aget-object v5, v0, v1

    .line 683
    .local v5, name:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 685
    .end local v5           #name:Ljava/lang/String;
    :cond_37
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 686
    move-object v0, v6

    array-length v4, v0

    const/4 v1, 0x0

    :goto_44
    if-ge v1, v4, :cond_61

    aget-object v5, v0, v1

    .line 687
    .restart local v5       #name:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 689
    .end local v5           #name:Ljava/lang/String;
    :cond_61
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    const-string v11, "USRPKEY_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 690
    move-object v0, v6

    array-length v4, v0

    const/4 v1, 0x0

    :goto_6e
    if-ge v1, v4, :cond_8b

    aget-object v5, v0, v1

    .line 691
    .restart local v5       #name:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRPKEY_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 694
    .end local v5           #name:Ljava/lang/String;
    :cond_8b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 695
    .local v2, key:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v10

    and-int/2addr v7, v10

    goto :goto_8f

    .line 718
    .end local v2           #key:Ljava/lang/String;
    :cond_a5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    return v7
.end method

.method public formatInternalStorage(ZZ)Z
    .registers 4
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Z)Z
    .registers 14
    .parameter "isExternal"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 219
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 221
    iput-boolean v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 225
    .local v1, ident:J
    :try_start_b
    iget-object v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v10, "storage"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 226
    .local v7, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 228
    .local v8, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    .line 229
    .local v3, intent:Landroid/content/Intent;
    if-ne p1, v11, :cond_67

    .line 230
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "storage_volume"

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    :goto_2b
    sget-object v9, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 238
    iget-object v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    if-ne p1, v11, :cond_61

    .line 241
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    .line 242
    .local v5, lock:Ljava/lang/Object;
    new-instance v6, Lcom/android/server/enterprise/SecurityPolicy$1;

    invoke-direct {v6, p0, v8, v5}, Lcom/android/server/enterprise/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/SecurityPolicy;[Landroid/os/storage/StorageVolume;Ljava/lang/Object;)V

    .line 260
    .local v6, mediaReceiver:Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v9, "file"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 263
    iget-object v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    monitor-enter v5
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_56} :catch_77

    .line 267
    const-wide/16 v9, 0x1b58

    :try_start_58
    invoke-virtual {v5, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_89
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_80

    .line 271
    :goto_5b
    :try_start_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_89

    .line 272
    :try_start_5c
    iget-object v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_77

    .line 279
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #intentFilter:Landroid/content/IntentFilter;
    .end local v5           #lock:Ljava/lang/Object;
    .end local v6           #mediaReceiver:Landroid/content/BroadcastReceiver;
    .end local v7           #storageManager:Landroid/os/storage/StorageManager;
    .end local v8           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_61
    :goto_61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    iget-boolean v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    return v9

    .line 233
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v7       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v8       #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_67
    :try_start_67
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "storage_volume"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_76} :catch_77

    goto :goto_2b

    .line 275
    .end local v3           #intent:Landroid/content/Intent;
    .end local v7           #storageManager:Landroid/os/storage/StorageManager;
    .end local v8           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_77
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "SecurityPolicy"

    const-string v10, "formatStorageCard fail"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 268
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #intentFilter:Landroid/content/IntentFilter;
    .restart local v5       #lock:Ljava/lang/Object;
    .restart local v6       #mediaReceiver:Landroid/content/BroadcastReceiver;
    .restart local v7       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v8       #storageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_80
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_81
    const-string v9, "SecurityPolicy"

    const-string v10, "formatStorageCard - InterruptedException"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 271
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_89
    move-exception v9

    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v9
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8c} :catch_77
.end method

.method public getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v0, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 776
    const-string v1, "@"

    const-string v2, "\\@"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 777
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_20
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v0, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    const-string v1, "-l"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    const-string v1, "-a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 794
    const-string v1, "@"

    const-string v2, "\\@"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 795
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, names:[Ljava/lang/String;
    if-eqz p1, :cond_19

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 512
    .local v1, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    .end local v1           #token:J
    :cond_19
    if-eqz v0, :cond_20

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_1f
    return-object v3

    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1f
.end method

.method public getInstalledCertificates()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 417
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v14, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v5, 0x0

    .line 420
    .local v5, cf:Ljava/security/cert/CertificateFactory;
    :try_start_9
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_e} :catch_46

    move-result-object v5

    .line 425
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v11, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 430
    .local v15, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 431
    .local v12, names:[Ljava/lang/String;
    move-object v2, v12

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_25
    if-ge v7, v9, :cond_62

    aget-object v10, v2, v7

    .line 432
    .local v10, name:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 421
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #names:[Ljava/lang/String;
    .end local v15           #token:J
    :catch_46
    move-exception v6

    .line 422
    .local v6, e:Ljava/security/cert/CertificateException;
    const-string v17, "SecurityPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error getting CertificateFactory instance"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v6           #e:Ljava/security/cert/CertificateException;
    :goto_61
    return-object v14

    .line 435
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12       #names:[Ljava/lang/String;
    .restart local v15       #token:J
    :cond_62
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_bf

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 436
    .restart local v10       #name:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 437
    .local v13, pem_cert:Ljava/lang/String;
    const/4 v3, 0x0

    .line 439
    .local v3, cert:Ljava/security/cert/X509Certificate;
    :try_start_7d
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_95} :catch_a3

    .line 444
    :goto_95
    if-eqz v3, :cond_66

    .line 445
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 446
    .local v4, certInfo:Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v4, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 447
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 441
    .end local v4           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :catch_a3
    move-exception v6

    .line 442
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "SecurityPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading certificate"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 452
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #pem_cert:Ljava/lang/String;
    :cond_bf
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 454
    .local v8, keystoreAliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "CACERT_"

    invoke-virtual/range {v17 .. v18}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 455
    move-object v2, v12

    array-length v9, v2

    const/4 v7, 0x0

    .local v7, i$:I
    :goto_d1
    if-ge v7, v9, :cond_f2

    aget-object v10, v2, v7

    .line 456
    .restart local v10       #name:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CACERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v7, v7, 0x1

    goto :goto_d1

    .line 458
    .end local v10           #name:Ljava/lang/String;
    :cond_f2
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_f6
    :goto_f6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_151

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 459
    .restart local v10       #name:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 460
    .restart local v13       #pem_cert:Ljava/lang/String;
    const/4 v3, 0x0

    .line 462
    .restart local v3       #cert:Ljava/security/cert/X509Certificate;
    :try_start_10d
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_125} :catch_144

    .line 467
    :goto_125
    if-eqz v3, :cond_f6

    .line 468
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 469
    .restart local v4       #certInfo:Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v4, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 464
    .end local v4           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :catch_144
    move-exception v6

    .line 465
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v17, "SecurityPolicy"

    const-string v18, "Exception reading certificate"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_125

    .line 493
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #pem_cert:Ljava/lang/String;
    :cond_151
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_61
.end method

.method public getSystemCertificates()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 400
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v5, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v1

    .line 403
    .local v1, aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    .local v0, alias:Ljava/lang/String;
    new-instance v3, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v3}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 405
    .local v3, certInfo:Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 406
    .local v2, cert:Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_12

    .line 407
    invoke-virtual {v3, v2}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 408
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 411
    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :cond_34
    return-object v5
.end method

.method public installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "type"
    .parameter "value"
    .parameter "name"
    .parameter "password"

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 646
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 647
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 648
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 649
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    array-length v5, p2

    if-eqz v5, :cond_18

    if-nez p3, :cond_21

    .line 650
    :cond_18
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : Invalid parameter(s)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v1, 0x0

    .line 668
    :goto_20
    return v1

    .line 653
    :cond_21
    const/4 v1, 0x0

    .line 654
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 656
    .local v2, token:J
    :try_start_26
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v5, v6, :cond_3f

    .line 657
    new-instance v4, Lcom/android/server/enterprise/CertificateUtil;

    invoke-direct {v4}, Lcom/android/server/enterprise/CertificateUtil;-><init>()V

    .line 658
    .local v4, util:Lcom/android/server/enterprise/CertificateUtil;
    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/server/enterprise/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_48

    move-result v1

    .line 667
    .end local v4           #util:Lcom/android/server/enterprise/CertificateUtil;
    :goto_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 661
    :cond_3f
    :try_start_3f
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : KS not UNLOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_48

    .line 662
    const/4 v1, 0x0

    goto :goto_3b

    .line 664
    :catch_48
    move-exception v0

    .line 665
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate EX: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .registers 9
    .parameter "type"
    .parameter "value"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    array-length v4, p2

    if-lez v4, :cond_29

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 139
    .local v2, token:J
    :try_start_12
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 142
    iget-object v4, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_26} :catch_2a

    .line 146
    .end local v1           #intent:Landroid/content/Intent;
    :goto_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    .end local v2           #token:J
    :cond_29
    return-void

    .line 143
    .restart local v2       #token:J
    :catch_2a
    move-exception v0

    .line 144
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityPolicy::installCertificateWithType() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_46

    goto :goto_26

    .line 146
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_46
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard()V
    .registers 7

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 158
    .local v2, token:J
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    iget-object v4, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_18} :catch_1c

    .line 164
    .end local v1           #intent:Landroid/content/Intent;
    :goto_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    return-void

    .line 161
    :catch_1c
    move-exception v0

    .line 162
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityPolicy::installCertificatesFromSdCard() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_38

    goto :goto_18

    .line 164
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .registers 2
    .parameter "pair"

    .prologue
    .line 126
    return-void
.end method

.method public isExternalStorageEncrypted()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const-string v5, "Security Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :try_start_a
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 387
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 388
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 389
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_2b

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_29

    .line 394
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    :cond_28
    :goto_28
    return v2

    .line 389
    .restart local v0       #dem:Landroid/dirEncryption/DirEncryptionManager;
    :cond_29
    const/4 v2, 0x1

    goto :goto_28

    .line 391
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    :catch_2b
    move-exception v1

    .line 392
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SecurityPolicy"

    const-string v4, "is External Storage Encrypted ?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public isInternalStorageEncrypted()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const-string v5, "Security Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :try_start_a
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 371
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_1d

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1c

    const/4 v2, 0x1

    .line 375
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1c
    :goto_1c
    return v2

    .line 372
    :catch_1d
    move-exception v1

    .line 373
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SecurityPolicy"

    const-string v4, "is Internal Storage Encrypted ?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public powerOffDevice()V
    .registers 5

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 729
    .local v0, token:J
    const-string v2, "SecurityPolicy"

    const-string v3, "powerOffDevice():EDM power off device start..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 731
    iget-object v2, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 732
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 734
    return-void
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .registers 15
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    const/high16 v12, 0x1000

    const/4 v7, 0x0

    .line 740
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, -0x1

    .line 744
    .local v5, rowCount:I
    :try_start_9
    const-string v2, "/data/system/accounts.db"

    .line 745
    .local v2, accountsDBPath:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 747
    const-string v8, "accounts"

    const-string v9, "type=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v1, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 751
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v3

    .line 752
    .local v3, ams:Landroid/accounts/AccountManagerService;
    if-eqz v3, :cond_2a

    .line 753
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_59
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_42

    .line 759
    :cond_2a
    if-eqz v1, :cond_2f

    .line 760
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 762
    :cond_2f
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v0, accountChangedIntent:Landroid/content/Intent;
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 764
    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    .end local v2           #accountsDBPath:Ljava/lang/String;
    .end local v3           #ams:Landroid/accounts/AccountManagerService;
    :goto_3b
    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 766
    const/4 v8, -0x1

    if-eq v5, v8, :cond_6f

    :goto_41
    return v6

    .line 755
    .end local v0           #accountChangedIntent:Landroid/content/Intent;
    :catch_42
    move-exception v4

    .line 756
    .local v4, e:Ljava/lang/Exception;
    const/4 v5, -0x1

    .line 757
    :try_start_44
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_59

    .line 759
    if-eqz v1, :cond_4c

    .line 760
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 762
    :cond_4c
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .restart local v0       #accountChangedIntent:Landroid/content/Intent;
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 764
    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    goto :goto_3b

    .line 759
    .end local v0           #accountChangedIntent:Landroid/content/Intent;
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_59
    move-exception v6

    if-eqz v1, :cond_5f

    .line 760
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 762
    :cond_5f
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .restart local v0       #accountChangedIntent:Landroid/content/Intent;
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 764
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 759
    throw v6

    :cond_6f
    move v6, v7

    .line 766
    goto :goto_41
.end method

.method public removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "key"
    .parameter "type"

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 581
    .local v2, token:J
    :try_start_8
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_25

    move-result v1

    .line 585
    :goto_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    return v1

    .line 582
    :catch_25
    move-exception v0

    .line 583
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SecurityPolicy"

    const-string v5, "removeCertificate EX: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public resetCredentialStorage()Z
    .registers 7

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 629
    const/4 v1, 0x0

    .line 630
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 632
    .local v2, token:J
    :try_start_8
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/KeyStore;->reset()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_14

    move-result v1

    .line 636
    :goto_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 637
    return v1

    .line 633
    :catch_14
    move-exception v0

    .line 634
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SecurityPolicy"

    const-string v5, "resetCredentialStorage EX: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public setCredentialStoragePassword(Ljava/lang/String;)Z
    .registers 3
    .parameter "password"

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public setExternalStorageEncryption(Z)V
    .registers 12
    .parameter "isEncrypt"

    .prologue
    .line 323
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.sec.MDM_SECURITY"

    const-string v9, "Misc Policy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 326
    .local v5, token:J
    :try_start_d
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 327
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 329
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez p1, :cond_31

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 330
    const-string v7, "SecurityPolicy"

    const-string v8, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2d} :catch_6e

    .line 357
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2d
    :goto_2d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    return-void

    .line 333
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_31
    :try_start_31
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    const/4 v7, 0x1

    if-ne p1, v7, :cond_7c

    .line 335
    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-virtual {v0, v7, v8, v9}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 342
    :goto_41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, status:Ljava/lang/String;
    const-string v7, "mounted_ro"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    const-string v7, "mounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 345
    :cond_55
    const-string v7, "SecurityPolicy"

    const-string v8, "setExternalStorageEncryption : SDCard mounted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v3, intent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6d
    .catchall {:try_start_31 .. :try_end_6d} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6d} :catch_6e

    goto :goto_2d

    .line 354
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #status:Ljava/lang/String;
    :catch_6e
    move-exception v2

    .line 355
    .local v2, e:Ljava/lang/Exception;
    :try_start_6f
    const-string v7, "SecurityPolicy"

    const-string v8, "is External Storage Encrypted?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_77

    goto :goto_2d

    .line 357
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_77
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 339
    .restart local v0       #dem:Landroid/dirEncryption/DirEncryptionManager;
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_7c
    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x7

    :try_start_7f
    invoke-virtual {v0, v7, v8, v9}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    goto :goto_41

    .line 352
    .restart local v4       #status:Ljava/lang/String;
    :cond_83
    const-string v7, "SecurityPolicy"

    const-string v8, "setExternalStorageEncryption : SDCard not mounted"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8a} :catch_6e

    goto :goto_2d
.end method

.method public setInternalStorageEncryption(Z)V
    .registers 10
    .parameter "isEncrypt"

    .prologue
    .line 291
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Security Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 294
    .local v3, token:J
    :try_start_d
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 296
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez p1, :cond_2b

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 297
    const-string v5, "SecurityPolicy"

    const-string v6, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_3b

    .line 312
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    return-void

    .line 300
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2b
    if-nez p1, :cond_49

    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/enterprise/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v5

    if-nez v5, :cond_49

    .line 301
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_27

    .line 309
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_3b
    move-exception v1

    .line 310
    .local v1, e:Ljava/lang/Exception;
    :try_start_3c
    const-string v5, "SecurityPolicy"

    const-string v6, "is Internal Storage Encrypted?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_44

    goto :goto_27

    .line 312
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_44
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 304
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_49
    :try_start_49
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_61} :catch_3b

    goto :goto_27
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .registers 10
    .parameter "password"

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 524
    const/4 v2, 0x0

    .line 525
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 527
    .local v3, token:J
    :try_start_8
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 529
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1e

    .line 530
    const/4 v2, 0x1

    .line 534
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    return v2

    .line 531
    :catch_1e
    move-exception v0

    .line 532
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
