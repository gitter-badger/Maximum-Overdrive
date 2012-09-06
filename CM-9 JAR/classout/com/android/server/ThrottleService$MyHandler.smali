.class Lcom/android/server/ThrottleService$MyHandler;
.super Landroid/os/Handler;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThrottleService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThrottleService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "l"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    .line 398
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 399
    return-void
.end method

.method private calculatePeriodEnd(J)Ljava/util/Calendar;
    .registers 12
    .parameter "now"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 723
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 724
    .local v1, end:Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 725
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 726
    .local v0, day:I
    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 727
    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 728
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 729
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 730
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 731
    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)I

    move-result v3

    if-lt v0, v3, :cond_49

    .line 732
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 733
    .local v2, month:I
    if-ne v2, v8, :cond_44

    .line 734
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 735
    const/4 v2, -0x1

    .line 737
    :cond_44
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 741
    .end local v2           #month:I
    :cond_49
    const-string v3, "persist.throttle.testing"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 742
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 743
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 744
    const/16 v3, 0xd

    const/16 v4, 0x258

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 746
    :cond_65
    return-object v1
.end method

.method private calculatePeriodStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 7
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 749
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 750
    .local v1, start:Ljava/util/Calendar;
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 751
    .local v0, month:I
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1d

    .line 752
    const/16 v0, 0xc

    .line 753
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 755
    :cond_1d
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 758
    const-string v2, "persist.throttle.testing"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 759
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #start:Ljava/util/Calendar;
    check-cast v1, Ljava/util/Calendar;

    .line 760
    .restart local v1       #start:Ljava/util/Calendar;
    const/16 v2, 0xd

    const/16 v3, -0x258

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 762
    :cond_3d
    return-object v1
.end method

.method private checkThrottleAndPostNotification(J)V
    .registers 28
    .parameter "currentTotal"

    .prologue
    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    .line 598
    .local v15, threshold:J
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-nez v21, :cond_18

    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$MyHandler;->clearThrottleAndNotification()V

    .line 672
    :cond_17
    :goto_17
    return-void

    .line 605
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/util/TrustedTime;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v21

    if-nez v21, :cond_30

    .line 606
    const-string v21, "ThrottleService"

    const-string v22, "missing trusted time, skipping throttle check"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 611
    :cond_30
    cmp-long v21, p1, v15

    if-lez v21, :cond_122

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 614
    const-string v21, "ThrottleService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Threshold "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " exceeded!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :try_start_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v24

    invoke-interface/range {v21 .. v24}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_ad} :catch_106

    .line 622
    :goto_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v21

    const v22, 0x108055e

    invoke-virtual/range {v21 .. v22}, Landroid/app/NotificationManager;->cancel(I)V

    .line 624
    const v21, 0x1040473

    const v22, 0x1040474

    const v23, 0x108055e

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ThrottleService$MyHandler;->postNotification(IIII)V

    .line 629
    new-instance v5, Landroid/content/Intent;

    const-string v21, "android.net.thrott.THROTTLE_ACTION"

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v5, broadcast:Landroid/content/Intent;
    const-string v21, "level"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 618
    .end local v5           #broadcast:Landroid/content/Intent;
    :catch_106
    move-exception v6

    .line 619
    .local v6, e:Ljava/lang/Exception;
    const-string v21, "ThrottleService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "error setting Throttle: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 636
    .end local v6           #e:Ljava/lang/Exception;
    :cond_122
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$MyHandler;->clearThrottleAndNotification()V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$1000(Lcom/android/server/ThrottleService;)I

    move-result v21

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_17

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodStart()J

    move-result-wide v13

    .line 650
    .local v13, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodEnd()J

    move-result-wide v7

    .line 651
    .local v7, end:J
    sub-long v11, v7, v13

    .line 652
    .local v11, periodLength:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 653
    .local v9, now:J
    sub-long v17, v9, v13

    .line 654
    .local v17, timeUsed:J
    const-wide/16 v21, 0x2

    mul-long v21, v21, v15

    mul-long v21, v21, v17

    add-long v23, v17, v11

    div-long v19, v21, v23

    .line 655
    .local v19, warningThreshold:J
    cmp-long v21, p1, v19

    if-lez v21, :cond_1ae

    const-wide/16 v21, 0x4

    div-long v21, v15, v21

    cmp-long v21, p1, v21

    if-lez v21, :cond_1ae

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$2000(Lcom/android/server/ThrottleService;)Z

    move-result v21

    if-nez v21, :cond_17

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/ThrottleService;->access$2002(Lcom/android/server/ThrottleService;Z)Z

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v21

    const v22, 0x108055e

    invoke-virtual/range {v21 .. v22}, Landroid/app/NotificationManager;->cancel(I)V

    .line 659
    const v21, 0x1040471

    const v22, 0x1040472

    const v23, 0x108055e

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ThrottleService$MyHandler;->postNotification(IIII)V

    goto/16 :goto_17

    .line 665
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$2000(Lcom/android/server/ThrottleService;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v21

    const v22, 0x108055e

    invoke-virtual/range {v21 .. v22}, Landroid/app/NotificationManager;->cancel(I)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/ThrottleService;->access$2002(Lcom/android/server/ThrottleService;Z)Z

    goto/16 :goto_17
.end method

.method private clearThrottleAndNotification()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 707
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 708
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 710
    :try_start_17
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_28} :catch_4f

    .line 714
    :goto_28
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.thrott.THROTTLE_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, broadcast:Landroid/content/Intent;
    const-string v2, "level"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 717
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v2

    const v3, 0x108055e

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 718
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #setter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static {v2, v7}, Lcom/android/server/ThrottleService;->access$2002(Lcom/android/server/ThrottleService;Z)Z

    .line 720
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_4e
    return-void

    .line 711
    :catch_4f
    move-exception v1

    .line 712
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ThrottleService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error clearing Throttle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private getUiContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mUiContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_17

    .line 701
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    #setter for: Lcom/android/server/ThrottleService;->mUiContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/server/ThrottleService;->access$002(Lcom/android/server/ThrottleService;Landroid/content/Context;)Landroid/content/Context;

    .line 703
    :cond_17
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mUiContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mUiContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v0

    goto :goto_25
.end method

.method private onIfaceUp()V
    .registers 6

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 586
    :try_start_d
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 587
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_41} :catch_42

    .line 593
    :cond_41
    :goto_41
    return-void

    .line 589
    :catch_42
    move-exception v0

    .line 590
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ThrottleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error setting Throttle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method private onPolicyChanged()V
    .registers 18

    .prologue
    .line 442
    const-string v13, "persist.throttle.testing"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 444
    .local v9, testing:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0021

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 446
    .local v8, pollingPeriod:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "throttle_polling_sec"

    invoke-static {v14, v15, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    #setter for: Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I
    invoke-static {v13, v14}, Lcom/android/server/ThrottleService;->access$502(Lcom/android/server/ThrottleService;I)I

    .line 450
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0022

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-long v3, v13

    .line 452
    .local v3, defaultThreshold:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0023

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 454
    .local v5, defaultValue:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "throttle_threshold_bytes"

    invoke-static {v13, v14, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 456
    .local v10, threshold:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "throttle_value_kbitsps"

    invoke-static {v13, v14, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 459
    .local v12, value:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 461
    if-eqz v9, :cond_b2

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/16 v14, 0x3c

    #setter for: Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I
    invoke-static {v13, v14}, Lcom/android/server/ThrottleService;->access$502(Lcom/android/server/ThrottleService;I)I

    .line 463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v13

    const-wide/32 v14, 0x100000

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 466
    :cond_b2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "throttle_reset_day"

    const/16 v16, -0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    #setter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v13, v14}, Lcom/android/server/ThrottleService;->access$802(Lcom/android/server/ThrottleService;I)I

    .line 468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_ef

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)I

    move-result v13

    const/4 v14, 0x1

    if-lt v13, v14, :cond_ef

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)I

    move-result v13

    const/16 v14, 0x1c

    if-le v13, v14, :cond_11c

    .line 470
    :cond_ef
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 471
    .local v6, g:Ljava/util/Random;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/16 v14, 0x1c

    invoke-virtual {v6, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    #setter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v13, v14}, Lcom/android/server/ThrottleService;->access$802(Lcom/android/server/ThrottleService;I)I

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "throttle_reset_day"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v15}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    .end local v6           #g:Ljava/util/Random;
    :cond_11c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_133

    .line 476
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 479
    :cond_133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0024

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 481
    .local v2, defaultNotificationType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "throttle_notification_type"

    invoke-static {v14, v15, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    #setter for: Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I
    invoke-static {v13, v14}, Lcom/android/server/ThrottleService;->access$1002(Lcom/android/server/ThrottleService;I)I

    .line 484
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "throttle_max_ntp_cache_age_sec"

    const v15, 0x15180

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 487
    .local v7, maxNtpCacheAgeSec:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    mul-int/lit16 v14, v7, 0x3e8

    int-to-long v14, v14

    #setter for: Lcom/android/server/ThrottleService;->mMaxNtpCacheAge:J
    invoke-static {v13, v14, v15}, Lcom/android/server/ThrottleService;->access$1102(Lcom/android/server/ThrottleService;J)J

    .line 489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_21c

    .line 490
    const-string v13, "ThrottleService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onPolicyChanged testing="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", period="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I
    invoke-static {v15}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", threshold="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v15}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v15}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", resetDay="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v15}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", noteType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I
    invoke-static {v15}, Lcom/android/server/ThrottleService;->access$1000(Lcom/android/server/ThrottleService;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mMaxNtpCacheAge="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mMaxNtpCacheAge:J
    invoke-static {v15}, Lcom/android/server/ThrottleService;->access$1100(Lcom/android/server/ThrottleService;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_21c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 500
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$MyHandler;->onResetAlarm()V

    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    .line 504
    new-instance v1, Landroid/content/Intent;

    const-string v13, "android.net.thrott.POLICY_CHANGED_ACTION"

    invoke-direct {v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v1, broadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 506
    return-void
.end method

.method private onPollAlarm()V
    .registers 30

    .prologue
    .line 509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 510
    .local v15, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)I

    move-result v25

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v13, v15, v25

    .line 513
    .local v13, next:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/util/TrustedTime;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ThrottleService;->mMaxNtpCacheAge:J
    invoke-static/range {v27 .. v27}, Lcom/android/server/ThrottleService;->access$1100(Lcom/android/server/ThrottleService;)J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-lez v25, :cond_50

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/util/TrustedTime;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/util/TrustedTime;->forceRefresh()Z

    move-result v25

    if-eqz v25, :cond_50

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ThrottleService;->dispatchReset()V

    .line 520
    :cond_50
    const-wide/16 v8, 0x0

    .line 521
    .local v8, incRead:J
    const-wide/16 v10, 0x0

    .line 523
    .local v10, incWrite:J
    :try_start_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/os/INetworkManagementService;->getNetworkStatsSummary()Landroid/net/NetworkStats;

    move-result-object v22

    .line 524
    .local v22, stats:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v12

    .line 527
    .local v12, index:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_242

    .line 528
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 529
    .local v7, entry:Landroid/net/NetworkStats$Entry;
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ThrottleService;->mLastRead:J
    invoke-static/range {v27 .. v27}, Lcom/android/server/ThrottleService;->access$1400(Lcom/android/server/ThrottleService;)J

    move-result-wide v27

    sub-long v8, v25, v27

    .line 530
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ThrottleService;->mLastWrite:J
    invoke-static/range {v27 .. v27}, Lcom/android/server/ThrottleService;->access$1500(Lcom/android/server/ThrottleService;)J

    move-result-wide v27

    sub-long v10, v25, v27

    .line 538
    .end local v7           #entry:Landroid/net/NetworkStats$Entry;
    :goto_b0
    const-wide/16 v25, 0x0

    cmp-long v25, v8, v25

    if-ltz v25, :cond_bc

    const-wide/16 v25, 0x0

    cmp-long v25, v10, v25

    if-gez v25, :cond_ea

    .line 539
    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mLastRead:J
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$1400(Lcom/android/server/ThrottleService;)J

    move-result-wide v25

    add-long v8, v8, v25

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mLastWrite:J
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$1500(Lcom/android/server/ThrottleService;)J

    move-result-wide v25

    add-long v10, v10, v25

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mLastRead:J
    invoke-static/range {v25 .. v27}, Lcom/android/server/ThrottleService;->access$1402(Lcom/android/server/ThrottleService;J)J

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mLastWrite:J
    invoke-static/range {v25 .. v27}, Lcom/android/server/ThrottleService;->access$1502(Lcom/android/server/ThrottleService;J)J
    :try_end_ea
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_ea} :catch_266
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_ea} :catch_283

    .line 551
    .end local v12           #index:I
    .end local v22           #stats:Landroid/net/NetworkStats;
    :cond_ea
    :goto_ea
    const-string v25, "true"

    const-string v26, "gsm.operator.isroaming"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 553
    .local v21, roaming:Z
    if-nez v21, :cond_107

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/ThrottleService$DataRecorder;->addData(JJ)V

    .line 557
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v17

    .line 558
    .local v17, periodRx:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v19

    .line 559
    .local v19, periodTx:J
    add-long v23, v17, v19

    .line 560
    .local v23, total:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_17f

    .line 561
    const-string v25, "ThrottleService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onPollAlarm - roaming ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", read ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", written ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", new total ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v8, v9}, Lcom/android/server/ThrottleService;->access$1414(Lcom/android/server/ThrottleService;J)J

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v10, v11}, Lcom/android/server/ThrottleService;->access$1514(Lcom/android/server/ThrottleService;J)J

    .line 567
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/ThrottleService$MyHandler;->checkThrottleAndPostNotification(J)V

    .line 569
    new-instance v5, Landroid/content/Intent;

    const-string v25, "android.net.thrott.POLL_ACTION"

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v5, broadcast:Landroid/content/Intent;
    const-string v25, "cycleRead"

    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 571
    const-string v25, "cycleWrite"

    move-object/from16 v0, v25

    move-wide/from16 v1, v19

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 572
    const-string v25, "cycleStart"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ThrottleService;->getPeriodStartTime(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 573
    const-string v25, "cycleEnd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ThrottleService;->getResetTime(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/android/server/ThrottleService;->mPollStickyBroadcast:Landroid/content/Intent;
    invoke-static {v0, v5}, Lcom/android/server/ThrottleService;->access$1602(Lcom/android/server/ThrottleService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$1800(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v26, v0

    #getter for: Lcom/android/server/ThrottleService;->mPendingPollIntent:Landroid/app/PendingIntent;
    invoke-static/range {v26 .. v26}, Lcom/android/server/ThrottleService;->access$1700(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/ThrottleService;->access$1800(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v25

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ThrottleService;->mPendingPollIntent:Landroid/app/PendingIntent;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ThrottleService;->access$1700(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 579
    return-void

    .line 533
    .end local v5           #broadcast:Landroid/content/Intent;
    .end local v17           #periodRx:J
    .end local v19           #periodTx:J
    .end local v21           #roaming:Z
    .end local v23           #total:J
    .restart local v12       #index:I
    .restart local v22       #stats:Landroid/net/NetworkStats;
    :cond_242
    :try_start_242
    const-string v25, "ThrottleService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "unable to find stats for iface "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_264
    .catch Ljava/lang/IllegalStateException; {:try_start_242 .. :try_end_264} :catch_266
    .catch Landroid/os/RemoteException; {:try_start_242 .. :try_end_264} :catch_283

    goto/16 :goto_b0

    .line 544
    .end local v12           #index:I
    .end local v22           #stats:Landroid/net/NetworkStats;
    :catch_266
    move-exception v6

    .line 545
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v25, "ThrottleService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "problem during onPollAlarm: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ea

    .line 546
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_283
    move-exception v6

    .line 547
    .local v6, e:Landroid/os/RemoteException;
    const-string v25, "ThrottleService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "problem during onPollAlarm: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ea
.end method

.method private onRebootRecovery()V
    .registers 5

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 428
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    new-instance v1, Lcom/android/server/ThrottleService$DataRecorder;

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ThrottleService$DataRecorder;-><init>(Landroid/content/Context;Lcom/android/server/ThrottleService;)V

    #setter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static {v0, v1}, Lcom/android/server/ThrottleService;->access$202(Lcom/android/server/ThrottleService;Lcom/android/server/ThrottleService$DataRecorder;)Lcom/android/server/ThrottleService$DataRecorder;

    .line 431
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$400(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 436
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$400(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$400(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 438
    return-void
.end method

.method private onResetAlarm()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 766
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4d

    .line 767
    const-string v6, "ThrottleService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResetAlarm - last period had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes read and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " written"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_4d
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/util/TrustedTime;

    move-result-object v6

    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mMaxNtpCacheAge:J
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$1100(Lcom/android/server/ThrottleService;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_6a

    .line 773
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/util/TrustedTime;

    move-result-object v6

    invoke-interface {v6}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 778
    :cond_6a
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/util/TrustedTime;

    move-result-object v6

    invoke-interface {v6}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 779
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/util/TrustedTime;

    move-result-object v6

    invoke-interface {v6}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v1

    .line 780
    .local v1, now:J
    invoke-direct {p0, v1, v2}, Lcom/android/server/ThrottleService$MyHandler;->calculatePeriodEnd(J)Ljava/util/Calendar;

    move-result-object v0

    .line 781
    .local v0, end:Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lcom/android/server/ThrottleService$MyHandler;->calculatePeriodStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    .line 783
    .local v5, start:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/server/ThrottleService$DataRecorder;->setNextPeriod(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 784
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    .line 787
    :cond_97
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1800(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPendingResetIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/ThrottleService;->access$2200(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 788
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v3, v6, v1

    .line 790
    .local v3, offset:J
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1800(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v3

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPendingResetIntent:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$2200(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 796
    .end local v0           #end:Ljava/util/Calendar;
    .end local v1           #now:J
    .end local v3           #offset:J
    .end local v5           #start:Ljava/util/Calendar;
    :cond_c1
    return-void
.end method

.method private postNotification(IIII)V
    .registers 13
    .parameter "titleInt"
    .parameter "messageInt"
    .parameter "icon"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 675
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.DataUsage"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const/high16 v5, 0x4000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 680
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 682
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 683
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 684
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 685
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    if-nez v5, :cond_58

    .line 686
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    #setter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5, v6}, Lcom/android/server/ThrottleService;->access$2102(Lcom/android/server/ThrottleService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 687
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 689
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput p3, v5, Landroid/app/Notification;->icon:I

    .line 690
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 692
    :cond_58
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput p4, v5, Landroid/app/Notification;->flags:I

    .line 693
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 694
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->getUiContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 696
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$1900(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v7}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 697
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 403
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 419
    :goto_5
    return-void

    .line 405
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onRebootRecovery()V

    goto :goto_5

    .line 408
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPolicyChanged()V

    goto :goto_5

    .line 411
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    goto :goto_5

    .line 414
    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onResetAlarm()V

    goto :goto_5

    .line 417
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onIfaceUp()V

    goto :goto_5

    .line 403
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method
