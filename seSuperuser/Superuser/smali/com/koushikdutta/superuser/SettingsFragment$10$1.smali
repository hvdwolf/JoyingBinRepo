.class Lcom/koushikdutta/superuser/SettingsFragment$10$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragment$10;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment$10;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$10$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 359
    packed-switch p2, :pswitch_data_0

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$10$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$10;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment$10;->update()V

    .line 371
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$10$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$10;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setNotificationType(Landroid/content/Context;I)V

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$10$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$10;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setNotificationType(Landroid/content/Context;I)V

    goto :goto_0

    .line 367
    :pswitch_2
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$10$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$10;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SettingsFragment$10;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setNotificationType(Landroid/content/Context;I)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
