.class Lcom/android/server/am/DeviceMonitor;
.super Ljava/lang/Object;
.source "DeviceMonitor.java"


# static fields
.field private static final BASE:Ljava/io/File; = null

.field private static final INTERVAL:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MAX_FILES:I = 0x1e

.field private static final PATHS:[Ljava/io/File; = null

.field private static final PROC:Ljava/io/File; = null

.field private static final SAMPLE_COUNT:I = 0xa

.field private static instance:Lcom/android/server/am/DeviceMonitor;


# instance fields
.field private final buffer:[B

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-class v0, Lcom/android/server/am/DeviceMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DeviceMonitor;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/DeviceMonitor;->PROC:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/DeviceMonitor;->BASE:Ljava/io/File;

    sget-object v0, Lcom/android/server/am/DeviceMonitor;->BASE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/android/server/am/DeviceMonitor;->BASE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4b

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/DeviceMonitor;->BASE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4b
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/am/DeviceMonitor;->PROC:Ljava/io/File;

    const-string v4, "zoneinfo"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/am/DeviceMonitor;->PROC:Ljava/io/File;

    const-string v4, "interrupts"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/am/DeviceMonitor;->PROC:Ljava/io/File;

    const-string v4, "meminfo"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/am/DeviceMonitor;->PROC:Ljava/io/File;

    const-string v4, "slabinfo"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/DeviceMonitor;->PATHS:[Ljava/io/File;

    new-instance v0, Lcom/android/server/am/DeviceMonitor;

    invoke-direct {v0}, Lcom/android/server/am/DeviceMonitor;-><init>()V

    sput-object v0, Lcom/android/server/am/DeviceMonitor;->instance:Lcom/android/server/am/DeviceMonitor;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/DeviceMonitor;->buffer:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/DeviceMonitor;->running:Z

    new-instance v0, Lcom/android/server/am/DeviceMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/DeviceMonitor$1;-><init>(Lcom/android/server/am/DeviceMonitor;)V

    invoke-virtual {v0}, Lcom/android/server/am/DeviceMonitor$1;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/DeviceMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/DeviceMonitor;->monitor()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/android/server/am/DeviceMonitor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private dump()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/android/server/am/DeviceMonitor;->BASE:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_14
    sget-object v6, Lcom/android/server/am/DeviceMonitor;->PROC:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v3, :cond_33

    aget-object v5, v0, v2

    invoke-static {v5}, Lcom/android/server/am/DeviceMonitor;->isProcessDirectory(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_30

    new-instance v6, Ljava/io/File;

    const-string v7, "stat"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6, v4}, Lcom/android/server/am/DeviceMonitor;->dump(Ljava/io/File;Ljava/io/OutputStream;)V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_33
    sget-object v0, Lcom/android/server/am/DeviceMonitor;->PATHS:[Ljava/io/File;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v3, :cond_46

    aget-object v1, v0, v2

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/DeviceMonitor;->dump(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_41

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :catchall_41
    move-exception v6

    invoke-static {v4}, Lcom/android/server/am/DeviceMonitor;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    :cond_46
    invoke-static {v4}, Lcom/android/server/am/DeviceMonitor;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private dump(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/server/am/DeviceMonitor;->writeHeader(Ljava/io/File;Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_23

    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/DeviceMonitor;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/am/DeviceMonitor;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v3

    move-object v1, v2

    :goto_1b
    invoke-static {v1}, Lcom/android/server/am/DeviceMonitor;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :cond_1f
    invoke-static {v2}, Lcom/android/server/am/DeviceMonitor;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_23
    move-exception v3

    goto :goto_1b
.end method

.method private static isProcessDirectory(Ljava/io/File;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    :goto_b
    return v1

    :catch_c
    move-exception v0

    const/4 v1, 0x0

    goto :goto_b
.end method

.method private monitor()V
    .registers 5

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/DeviceMonitor;->waitForStart()V

    invoke-direct {p0}, Lcom/android/server/am/DeviceMonitor;->purge()V

    const/4 v1, 0x0

    :goto_7
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1d

    :try_start_b
    invoke-direct {p0}, Lcom/android/server/am/DeviceMonitor;->dump()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_14

    :goto_e
    invoke-direct {p0}, Lcom/android/server/am/DeviceMonitor;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_14
    move-exception v0

    sget-object v2, Lcom/android/server/am/DeviceMonitor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Dump failed."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :cond_1d
    invoke-direct {p0}, Lcom/android/server/am/DeviceMonitor;->stop()V

    goto :goto_0
.end method

.method private pause()V
    .registers 3

    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private purge()V
    .registers 7

    sget-object v3, Lcom/android/server/am/DeviceMonitor;->BASE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v0, v3, -0x1e

    if-lez v0, :cond_3c

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_3c

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_39

    sget-object v3, Lcom/android/server/am/DeviceMonitor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_3c
    return-void
.end method

.method static start()V
    .registers 1

    sget-object v0, Lcom/android/server/am/DeviceMonitor;->instance:Lcom/android/server/am/DeviceMonitor;

    invoke-direct {v0}, Lcom/android/server/am/DeviceMonitor;->startMonitoring()V

    return-void
.end method

.method private declared-synchronized startMonitoring()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/DeviceMonitor;->running:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/DeviceMonitor;->running:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/DeviceMonitor;->running:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitForStart()V
    .registers 2

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/DeviceMonitor;->running:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static writeHeader(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
