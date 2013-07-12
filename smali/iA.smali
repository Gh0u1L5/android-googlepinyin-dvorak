.class public final LiA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, LiA;->a:Landroid/os/Handler;

    .line 30
    iput-object v0, p0, LiA;->a:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LiA;->a:Ljava/util/HashMap;

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Background tasks"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, LiA;->a:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)LiC;
    .locals 2
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v1, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LiC;

    .line 68
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;LiB;JJ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, LiC;

    iget-object v2, p0, LiA;->a:Landroid/os/Handler;

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, LiC;-><init>(Ljava/lang/String;Landroid/os/Handler;LiB;J)V

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v1, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v1, p0, LiA;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, LiA;->a(Ljava/lang/String;)LiC;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget v0, v0, LiC;->a:I

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    const-string v0, "TaskScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "TaskScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GC scanning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " task(s) ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 110
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_2

    .line 111
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    .line 112
    iget-object v2, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LiC;

    .line 113
    if-eqz v2, :cond_1

    iget v2, v2, LiC;->a:I

    if-ne v2, v6, :cond_1

    .line 114
    iget-object v2, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "TaskScheduler"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "TaskScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GC removed stopped task <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 120
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LiC;

    iget-object v1, p0, LiA;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, LiA;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    :cond_1
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;LiB;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, LiA;->b(Ljava/lang/String;LiB;JJ)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;LiB;JJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct/range {p0 .. p6}, LiA;->b(Ljava/lang/String;LiB;JJ)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, LiA;->a(Ljava/lang/String;)LiC;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    iget v1, v0, LiC;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 100
    invoke-virtual {v0}, LiC;->a()Z

    .line 102
    :cond_0
    return-void
.end method
