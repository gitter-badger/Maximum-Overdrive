.class Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdInstallArgs"
.end annotation


# static fields
.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field libraryPath:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "packageURI"
    .parameter "cid"

    .prologue
    const/4 v2, 0x0

    .line 6087
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6088
    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6089
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6090
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .registers 9
    .parameter
    .parameter "params"

    .prologue
    .line 6066
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6067
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->manifestDigest:Landroid/content/pm/ManifestDigest;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6069
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter "cid"

    .prologue
    const/4 v1, 0x0

    .line 6081
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6082
    const/16 v3, 0x8

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6083
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6084
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 6085
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    const/4 v1, 0x0

    .line 6071
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6072
    const/16 v3, 0x8

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;)V

    .line 6074
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 6075
    .local v6, eidx:I
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 6076
    .local v8, subStr1:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 6077
    .local v7, sidx:I
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6078
    invoke-direct {p0, v8}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 6079
    return-void
.end method

.method private cleanUp()V
    .registers 2

    .prologue
    .line 6235
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 6236
    return-void
.end method

.method private setCachePath(Ljava/lang/String;)V
    .registers 5
    .parameter "newCachePath"

    .prologue
    .line 6215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6216
    .local v0, cachePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->libraryPath:Ljava/lang/String;

    .line 6217
    new-instance v1, Ljava/io/File;

    const-string v2, "pkg.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    .line 6218
    return-void
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .registers 7
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 6098
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.defcontainer"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 6100
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IMediaContainerService;->checkExternalFreeStorage(Landroid/net/Uri;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    move-result v0

    .line 6102
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 6100
    return v0

    .line 6102
    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0
.end method

.method cleanUpResourcesLI()V
    .registers 6

    .prologue
    .line 6239
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 6241
    .local v1, sourceFile:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 6242
    .local v0, retCode:I
    if-gez v0, :cond_34

    .line 6243
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6248
    :cond_34
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cleanUp()V

    .line 6249
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .registers 9
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 6107
    if-eqz p2, :cond_31

    .line 6108
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->createCopyFile()V

    .line 6119
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.android.defcontainer"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 6121
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packageURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg.apk"

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/internal/app/IMediaContainerService;->copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_37

    move-result-object v0

    .line 6124
    .local v0, newCachePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 6127
    if-eqz v0, :cond_42

    .line 6128
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 6131
    :goto_30
    return v1

    .line 6114
    .end local v0           #newCachePath:Ljava/lang/String;
    :cond_31
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_6

    .line 6124
    :catchall_37
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v2

    .line 6131
    .restart local v0       #newCachePath:Ljava/lang/String;
    :cond_42
    const/16 v1, -0x12

    goto :goto_30
.end method

.method createCopyFile()V
    .registers 2

    .prologue
    .line 6093
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getTempContainerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6094
    return-void
.end method

.method doPostDeleteLI(Z)Z
    .registers 5
    .parameter "delete"

    .prologue
    .line 6267
    const/4 v1, 0x0

    .line 6268
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 6269
    .local v0, mounted:Z
    if-eqz v0, :cond_f

    .line 6271
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v1

    .line 6273
    :cond_f
    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    .line 6274
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cleanUpResourcesLI()V

    .line 6276
    :cond_16
    return v1
.end method

.method doPostInstall(I)I
    .registers 6
    .parameter "status"

    .prologue
    .line 6221
    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    .line 6222
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cleanUp()V

    .line 6230
    :cond_6
    :goto_6
    return p1

    .line 6224
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 6225
    .local v0, mounted:Z
    if-nez v0, :cond_6

    .line 6226
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_6
.end method

.method doPreInstall(I)I
    .registers 7
    .parameter "status"

    .prologue
    .line 6151
    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    .line 6153
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 6166
    .end local p1
    :cond_8
    :goto_8
    return p1

    .line 6155
    .restart local p1
    :cond_9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 6156
    .local v0, mounted:Z
    if-nez v0, :cond_8

    .line 6157
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6159
    .local v1, newCachePath:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 6160
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    goto :goto_8

    .line 6162
    :cond_25
    const/16 p1, -0x12

    goto :goto_8
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v2, 0x0

    .line 6171
    const-string v3, "/pkg.apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v3}, Lcom/android/server/pm/PackageManagerService;->access$2700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6172
    .local v0, newCacheId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 6173
    .local v1, newCachePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 6175
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 6176
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " before renaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6211
    :goto_38
    return v2

    .line 6180
    :cond_39
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_be

    .line 6181
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which might be stale. Will try to clean up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6184
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 6185
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Very strange. Cannot clean up stale container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 6189
    :cond_8a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_be

    .line 6190
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inspite of cleaning it up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 6195
    :cond_be
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_104

    .line 6196
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mounting container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6197
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6202
    :goto_e8
    if-nez v1, :cond_109

    .line 6203
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get cache path for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 6200
    :cond_104
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e8

    .line 6206
    :cond_109
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succesfully renamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at new path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6210
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 6211
    const/4 v2, 0x1

    goto/16 :goto_38
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6137
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6147
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6259
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 6260
    .local v0, idx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 6261
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 6263
    :goto_d
    return-object v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method getResourcePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6142
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method matchContainer(Ljava/lang/String;)Z
    .registers 3
    .parameter "app"

    .prologue
    .line 6252
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6253
    const/4 v0, 0x1

    .line 6255
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
