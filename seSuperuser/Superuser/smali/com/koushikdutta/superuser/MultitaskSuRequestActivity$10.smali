.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;
.super Ljava/lang/Object;
.source "MultitaskSuRequestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->setContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 432
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-static {v1}, Lcom/koushikdutta/superuser/util/Settings;->isPinProtected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->approve()V

    .line 462
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 438
    .local v6, "ready":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getUntil()I

    move-result v5

    .line 439
    .local v5, "until":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 441
    new-instance v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)V

    .line 461
    .local v0, "pin":Lcom/koushikdutta/superuser/PinViewHelper;
    invoke-virtual {v0}, Lcom/koushikdutta/superuser/PinViewHelper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
