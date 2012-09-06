.class Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mResponses:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "maxCount"

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    .line 497
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 498
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/NativeDaemonEvent;)V
    .registers 11
    .parameter "cmdNum"
    .parameter "response"

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    monitor-enter v5

    .line 503
    :try_start_4
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    .line 504
    .local v3, r:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    iget v4, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->cmdNum:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_a5

    if-ne v4, p1, :cond_a

    .line 505
    move-object v0, v3

    move-object v1, v0

    .line 509
    .end local v0           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .end local v3           #r:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .local v1, found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_1c
    if-nez v1, :cond_a7

    .line 512
    :goto_1e
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v4, v6, :cond_8b

    .line 513
    const-string v4, "NativeDaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "more buffered than allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    .line 518
    .restart local v3       #r:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    const-string v4, "NativeDaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->request:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->cmdNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_1e .. :try_end_86} :catchall_87

    goto :goto_1e

    .line 525
    .end local v3           #r:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :catchall_87
    move-exception v4

    move-object v0, v1

    .end local v1           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .end local v2           #i$:Ljava/util/Iterator;
    .restart local v0       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_89
    :try_start_89
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_a5

    throw v4

    .line 521
    .end local v0           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v1       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8b
    :try_start_8b
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;-><init>(ILjava/lang/String;)V
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_87

    .line 522
    .end local v1           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v0       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :try_start_91
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 524
    :goto_96
    iget-object v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 525
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_a5

    .line 526
    monitor-enter v0

    .line 527
    :try_start_9d
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 528
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_a2
    move-exception v4

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_a2

    throw v4

    .line 525
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_a5
    move-exception v4

    goto :goto_89

    .end local v0           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v1       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_a7
    move-object v0, v1

    .end local v1           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v0       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_96

    :cond_a9
    move-object v1, v0

    .end local v0           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v1       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto/16 :goto_1c
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 577
    const-string v2, "Pending requests:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    monitor-enter v3

    .line 579
    :try_start_8
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    .line 580
    .local v1, response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->cmdNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->request:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 582
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 583
    return-void
.end method

.method public remove(IILjava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .registers 16
    .parameter "cmdNum"
    .parameter "timeoutMs"
    .parameter "origCmd"

    .prologue
    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    int-to-long v10, p2

    add-long v0, v8, v10

    .line 536
    .local v0, endTime:J
    const/4 v2, 0x0

    .line 538
    .local v2, found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_8
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    monitor-enter v9

    .line 539
    :try_start_b
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_3e

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    move-object v3, v2

    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .local v3, found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_12
    :try_start_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    .line 540
    .local v7, response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    iget v8, v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->cmdNum:I
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_71

    if-ne v8, p1, :cond_41

    .line 541
    move-object v2, v7

    .line 543
    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :try_start_23
    iget-object v8, v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    packed-switch v8, :pswitch_data_76

    .line 549
    :goto_2c
    iput-object p3, v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->request:Ljava/lang/String;

    .line 550
    iget-object v8, v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/NativeDaemonEvent;

    monitor-exit v9

    .line 558
    .end local v7           #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_37
    return-object v8

    .line 547
    .restart local v7       #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :pswitch_38
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 565
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :catchall_3e
    move-exception v8

    :goto_3f
    monitor-exit v9
    :try_end_40
    .catchall {:try_start_23 .. :try_end_40} :catchall_3e

    throw v8

    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :cond_41
    move-object v2, v3

    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :pswitch_42
    move-object v3, v2

    .line 550
    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_12

    .line 554
    .end local v7           #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :cond_44
    :try_start_44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 555
    .local v5, nowTime:J
    cmp-long v8, v0, v5

    if-gtz v8, :cond_57

    .line 556
    const-string v8, "NativeDaemonConnector.ResponseQueue"

    const-string v10, "Timeout waiting for response"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v8, 0x0

    monitor-exit v9

    move-object v2, v3

    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_37

    .line 561
    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :cond_57
    if-nez v3, :cond_74

    .line 562
    new-instance v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    invoke-direct {v2, p1, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;-><init>(ILjava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_71

    .line 563
    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :try_start_5e
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 565
    :goto_63
    monitor-exit v9
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_3e

    .line 567
    :try_start_64
    monitor-enter v2
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_65} :catch_6f

    .line 568
    sub-long v8, v0, v5

    :try_start_67
    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 569
    monitor-exit v2

    goto :goto_8

    :catchall_6c
    move-exception v8

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v8
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_6f} :catch_6f

    .line 570
    :catch_6f
    move-exception v8

    goto :goto_8

    .line 565
    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .end local v5           #nowTime:J
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :catchall_71
    move-exception v8

    move-object v2, v3

    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_3f

    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v5       #nowTime:J
    :cond_74
    move-object v2, v3

    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_63

    .line 543
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_42
        :pswitch_38
    .end packed-switch
.end method
