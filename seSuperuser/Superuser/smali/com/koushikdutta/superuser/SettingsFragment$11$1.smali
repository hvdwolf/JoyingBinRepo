.class Lcom/koushikdutta/superuser/SettingsFragment$11$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragment$11;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment$11;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 404
    packed-switch p2, :pswitch_data_0

    .line 409
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$11;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setTheme(Landroid/content/Context;I)V

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$11;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment$11;->update()V

    .line 413
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$11;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragment$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$11;

    iget-object v2, v2, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 414
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$11;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 415
    return-void

    .line 406
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$11$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$11;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setTheme(Landroid/content/Context;I)V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
