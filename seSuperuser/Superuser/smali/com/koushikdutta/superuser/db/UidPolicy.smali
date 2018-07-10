.class public Lcom/koushikdutta/superuser/db/UidPolicy;
.super Lcom/koushikdutta/superuser/db/UidCommand;
.source "UidPolicy.java"


# static fields
.field public static final ALLOW:Ljava/lang/String; = "allow"

.field public static final DENY:Ljava/lang/String; = "deny"

.field public static final INTERACTIVE:Ljava/lang/String; = "interactive"


# instance fields
.field public logging:Z

.field public notification:Z

.field public policy:Ljava/lang/String;

.field public until:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0}, Lcom/koushikdutta/superuser/db/UidCommand;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->logging:Z

    .line 31
    iput-boolean v0, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->notification:Z

    return-void
.end method


# virtual methods
.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyResource()I
    .locals 2

    .prologue
    .line 37
    const-string v0, "allow"

    iget-object v1, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const v0, 0x7f050004

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_0
    const-string v0, "interactive"

    iget-object v1, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const v0, 0x7f050021

    goto :goto_0

    .line 41
    :cond_1
    const v0, 0x7f050014

    goto :goto_0
.end method

.method public getUntilDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 33
    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->until:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    .line 50
    return-void
.end method
