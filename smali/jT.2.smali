.class public final LjT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LjT;->a:Ljava/util/ArrayList;

    .line 174
    return-void
.end method


# virtual methods
.method public a()LjS;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, LjT;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    new-instance v1, Lkv;

    invoke-direct {v1, v0}, Lkv;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, LjS;->a()LjS;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, LkB;

    invoke-static {v0}, Lke;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, LkB;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)LjT;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, LjT;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, LjS;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    return-object p0
.end method
