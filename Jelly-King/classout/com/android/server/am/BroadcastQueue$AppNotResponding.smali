.class final Lcom/android/server/am/BroadcastQueue$AppNotResponding;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppNotResponding"
.end annotation


# instance fields
.field private final mAnnotation:Ljava/lang/String;

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mAnnotation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method