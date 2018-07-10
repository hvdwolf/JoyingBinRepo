.class Lcom/koushikdutta/superuser/SettingsFragment$6$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragment$6;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment$6;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$6$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    packed-switch p2, :pswitch_data_0

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$6$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$6;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment$6;->update()V

    .line 282
    return-void

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$6$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$6;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setAutomaticResponse(Landroid/content/Context;I)V

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$6$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$6;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setAutomaticResponse(Landroid/content/Context;I)V

    goto :goto_0

    .line 278
    :pswitch_2
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$6$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$6;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setAutomaticResponse(Landroid/content/Context;I)V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
