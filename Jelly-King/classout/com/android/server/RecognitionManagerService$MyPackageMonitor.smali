.class Lcom/android/server/RecognitionManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecognitionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecognitionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RecognitionManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v2}, Lcom/android/server/RecognitionManagerService;->getCurRecognizer()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->anyPackagesAppearing()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/RecognitionManagerService;->findAvailRecognizer(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_37

    :cond_2b
    iget-object v2, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    iget-object v3, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/RecognitionManagerService;->findAvailRecognizer(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;)V

    goto :goto_1c

    :cond_37
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    iget-object v3, p0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/RecognitionManagerService;->findAvailRecognizer(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;)V

    goto :goto_1c
.end method
