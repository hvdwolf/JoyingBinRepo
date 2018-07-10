.class Lcom/koushikdutta/superuser/SettingsFragment$4;
.super Lcom/koushikdutta/widgets/ListItem;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;III)V
    .locals 0
    .param p2, "x0"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .prologue
    .line 125
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;III)V

    .line 146
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment$4;->update()V

    .line 147
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragment$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05004b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 155
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050002

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$4;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcom/koushikdutta/superuser/SettingsFragment$4$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/SettingsFragment$4$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragment$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 177
    return-void
.end method

.method update()V
    .locals 2

    .prologue
    const v1, 0x7f050008

    .line 127
    invoke-static {}, Lcom/koushikdutta/superuser/util/Settings;->getSuperuserAccess()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/SettingsFragment$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    .line 144
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 132
    :pswitch_1
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/SettingsFragment$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 138
    :pswitch_3
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$4;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
