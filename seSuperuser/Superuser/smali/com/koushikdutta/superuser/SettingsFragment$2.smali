.class Lcom/koushikdutta/superuser/SettingsFragment$2;
.super Lcom/koushikdutta/superuser/PinViewHelper;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment;->setPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/SettingsFragment;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/app/Dialog;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/LayoutInflater;
    .param p3, "x1"    # Landroid/view/ViewGroup;
    .param p4, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$2;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    iput-object p5, p0, Lcom/koushikdutta/superuser/SettingsFragment$2;->val$d:Landroid/app/Dialog;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/superuser/PinViewHelper;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/koushikdutta/superuser/PinViewHelper;->onCancel()V

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$2;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 83
    return-void
.end method

.method public onEnter(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/koushikdutta/superuser/PinViewHelper;->onEnter(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$2;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/superuser/SettingsFragment;->confirmPin(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$2;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 78
    return-void
.end method
