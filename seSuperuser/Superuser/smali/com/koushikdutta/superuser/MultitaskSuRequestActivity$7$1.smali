.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7$1;
.super Ljava/lang/Object;
.source "MultitaskSuRequestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRequestReady:Z

    .line 308
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->requestReady()V

    .line 309
    return-void
.end method
