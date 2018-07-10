.class Lcom/koushikdutta/superuser/PolicyFragment$2$1;
.super Landroid/os/Handler;
.source "PolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragment$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/PolicyFragment$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragment$2;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2$1;->this$1:Lcom/koushikdutta/superuser/PolicyFragment$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragment$2$1;->this$1:Lcom/koushikdutta/superuser/PolicyFragment$2;

    iget-object v0, v0, Lcom/koushikdutta/superuser/PolicyFragment$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2$1;->this$1:Lcom/koushikdutta/superuser/PolicyFragment$2;

    iget-object v1, v1, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$item:Lcom/koushikdutta/widgets/ListItem;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/PolicyFragment;->removeItem(Lcom/koushikdutta/widgets/ListItem;)V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragment$2$1;->this$1:Lcom/koushikdutta/superuser/PolicyFragment$2;

    iget-object v0, v0, Lcom/koushikdutta/superuser/PolicyFragment$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2$1;->this$1:Lcom/koushikdutta/superuser/PolicyFragment$2;

    iget-object v1, v1, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    const v2, 0x7f050012

    # invokes: Lcom/koushikdutta/superuser/PolicyFragment;->showErrorDialog(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    invoke-static {v0, v1, v2}, Lcom/koushikdutta/superuser/PolicyFragment;->access$000(Lcom/koushikdutta/superuser/PolicyFragment;Lcom/koushikdutta/superuser/db/UidPolicy;I)V

    goto :goto_0
.end method
