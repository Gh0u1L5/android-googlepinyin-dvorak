.class public final Lkn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2469
    sget-object v0, Ljv;->a:Ljf;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljf;->a(Ljava/lang/String;)Ljj;

    move-result-object v0

    sput-object v0, Lkn;->a:Ljj;

    return-void
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2574
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljv;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2575
    sget-object v1, Lkn;->a:Ljj;

    invoke-virtual {v1, v0, p0}, Ljj;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 2576
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1009
    new-instance v0, LjJ;

    invoke-direct {v0, p0, p1}, LjJ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(LkG;)LkG;
    .locals 1
    .parameter

    .prologue
    .line 2672
    new-instance v0, Lkp;

    invoke-direct {v0, p0}, Lkp;-><init>(LkG;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2560
    if-ne p0, p1, :cond_0

    .line 2561
    const/4 v0, 0x1

    .line 2567
    :goto_0
    return v0

    .line 2563
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2564
    check-cast p1, Ljava/util/Map;

    .line 2565
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2567
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2599
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lko;

    invoke-direct {v1, v0}, Lko;-><init>(Ljava/util/Iterator;)V

    invoke-static {v1, p1}, Lkg;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
