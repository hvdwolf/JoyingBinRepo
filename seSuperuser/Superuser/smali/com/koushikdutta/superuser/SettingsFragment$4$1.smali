.class Lcom/koushikdutta/superuser/SettingsFragment$4$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SettingsFragment$4;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment$4;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$4$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 159
    packed-switch p2, :pswitch_data_0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$4$1;->this$1:Lcom/koushikdutta/superuser/SettingsFragment$4;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment$4;->update()V

    .line 174
    return-void

    .line 161
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->setSuperuserAccess(I)V

    goto :goto_0

    .line 164
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->setSuperuserAccess(I)V

    goto :goto_0

    .line 167
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->setSuperuserAccess(I)V

    goto :goto_0

    .line 170
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->setSuperuserAccess(I)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
