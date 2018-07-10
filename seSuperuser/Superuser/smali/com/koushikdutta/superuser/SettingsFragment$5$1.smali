.class Lcom/koushikdutta/superuser/SettingsFragment$5$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragment$5;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment$5;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 223
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$5;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment$5;->update()V

    .line 235
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$5;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setMultiuserMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$5;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setMultiuserMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 231
    :pswitch_2
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$5$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$5;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setMultiuserMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
