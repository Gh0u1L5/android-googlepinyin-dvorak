.class public final enum LdM;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LdM;

.field public static final enum CANCELLED:LdM;

.field public static final enum COMMITTED:LdM;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, LdM;

    const-string v1, "COMMITTED"

    invoke-direct {v0, v1, v2}, LdM;-><init>(Ljava/lang/String;I)V

    sput-object v0, LdM;->COMMITTED:LdM;

    new-instance v0, LdM;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v3}, LdM;-><init>(Ljava/lang/String;I)V

    sput-object v0, LdM;->CANCELLED:LdM;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [LdM;

    sget-object v1, LdM;->COMMITTED:LdM;

    aput-object v1, v0, v2

    sget-object v1, LdM;->CANCELLED:LdM;

    aput-object v1, v0, v3

    sput-object v0, LdM;->$VALUES:[LdM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LdM;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, LdM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LdM;

    return-object v0
.end method

.method public static values()[LdM;
    .locals 1

    .prologue
    .line 29
    sget-object v0, LdM;->$VALUES:[LdM;

    invoke-virtual {v0}, [LdM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LdM;

    return-object v0
.end method
