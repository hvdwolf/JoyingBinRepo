.class Lcom/koushikdutta/superuser/SettingsFragment$6;
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
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;II)V
    .locals 0
    .param p2, "x0"    # Lcom/koushikdutta/widgets/BetterListFragment;
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .prologue
    .line 242
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;II)V

    .line 258
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment$6;->update()V

    .line 259
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 264
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05000a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f05003d

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050014

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 267
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcom/koushikdutta/superuser/SettingsFragment$6$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/SettingsFragment$6$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragment$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 285
    return-void
.end method

.method update()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$6;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->getAutomaticResponse(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 246
    :pswitch_0
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$6;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 249
    :pswitch_1
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$6;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 252
    :pswitch_2
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$6;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
