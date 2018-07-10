.class Lcom/koushikdutta/superuser/SettingsFragment$1;
.super Lcom/koushikdutta/superuser/PinViewHelper;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment;->confirmPin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/SettingsFragment;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/LayoutInflater;
    .param p3, "x1"    # Landroid/view/ViewGroup;
    .param p4, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    iput-object p5, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->val$pin:Ljava/lang/String;

    iput-object p6, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->val$d:Landroid/app/Dialog;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/superuser/PinViewHelper;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/koushikdutta/superuser/PinViewHelper;->onCancel()V

    .line 64
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 65
    return-void
.end method

.method public onEnter(Ljava/lang/String;)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f05003c

    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/koushikdutta/superuser/PinViewHelper;->onEnter(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->val$pin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->setPin(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    iget-object v2, v0, Lcom/koushikdutta/superuser/SettingsFragment;->pinItem:Lcom/koushikdutta/widgets/ListItem;

    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->isPinProtected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/koushikdutta/widgets/ListItem;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 60
    :goto_1
    return-void

    .line 53
    :cond_1
    const v0, 0x7f05003b

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/superuser/SettingsFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v2, 0x7f050039

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
