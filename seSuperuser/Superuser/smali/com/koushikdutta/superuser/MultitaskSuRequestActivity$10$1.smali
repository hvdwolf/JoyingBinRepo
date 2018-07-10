.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;
.super Lcom/koushikdutta/superuser/PinViewHelper;
.source "MultitaskSuRequestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

.field final synthetic val$until:I


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)V
    .locals 0
    .param p2, "x0"    # Landroid/view/LayoutInflater;
    .param p3, "x1"    # Landroid/view/ViewGroup;
    .param p4, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    iput p5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->val$until:I

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/superuser/PinViewHelper;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/koushikdutta/superuser/PinViewHelper;->onCancel()V

    .line 457
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->deny()V

    .line 458
    return-void
.end method

.method public onEnter(Ljava/lang/String;)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 444
    invoke-super {p0, p1}, Lcom/koushikdutta/superuser/PinViewHelper;->onEnter(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-static {v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const/4 v1, 0x1

    iget v2, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->val$until:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10$1;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    iget-object v1, v1, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
