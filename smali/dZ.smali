.class final enum LdZ;
.super LdX;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LdX;-><init>(Ljava/lang/String;ILdV;)V

    return-void
.end method


# virtual methods
.method public canonical()LdX;
    .locals 1

    .prologue
    .line 57
    sget-object v0, LdZ;->COMMIT:LdX;

    return-object v0
.end method
