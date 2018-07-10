.class Lcom/koushikdutta/superuser/PolicyFragment$2;
.super Ljava/lang/Object;
.source "PolicyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragment;->showExtraActions(Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PolicyFragment;

.field final synthetic val$item:Lcom/koushikdutta/widgets/ListItem;

.field final synthetic val$permissionChange:Ljava/lang/String;

.field final synthetic val$up:Lcom/koushikdutta/superuser/db/UidPolicy;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragment;Ljava/lang/String;Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    iput-object p2, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$permissionChange:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iput-object p4, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$item:Lcom/koushikdutta/widgets/ListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 159
    packed-switch p2, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$permissionChange:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/PolicyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    const-string v2, "allow"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/db/UidPolicy;->setPolicy(Ljava/lang/String;)V

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-static {v1, v2}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->setPolicy(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    .line 169
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragment;->load()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    const-string v2, "deny"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/db/UidPolicy;->setPolicy(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :pswitch_1
    new-instance v0, Lcom/koushikdutta/superuser/PolicyFragment$2$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/superuser/PolicyFragment$2$1;-><init>(Lcom/koushikdutta/superuser/PolicyFragment$2;)V

    .line 182
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/koushikdutta/superuser/PolicyFragment$2$2;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/superuser/PolicyFragment$2$2;-><init>(Lcom/koushikdutta/superuser/PolicyFragment$2;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragment$2$2;->start()V

    .line 193
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 196
    .end local v0    # "handler":Landroid/os/Handler;
    :pswitch_2
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    iget-object v2, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$item:Lcom/koushikdutta/widgets/ListItem;

    iget-object v3, p0, Lcom/koushikdutta/superuser/PolicyFragment$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/superuser/PolicyFragment;->setContent(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    .line 197
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
