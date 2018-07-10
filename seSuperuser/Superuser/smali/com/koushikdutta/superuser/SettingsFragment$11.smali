.class Lcom/koushikdutta/superuser/SettingsFragment$11;
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
    .line 379
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;II)V

    .line 391
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment$11;->update()V

    .line 392
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 396
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 398
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f050050

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 400
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050022

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050011

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 401
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcom/koushikdutta/superuser/SettingsFragment$11$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/SettingsFragment$11$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragment$11;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 418
    return-void
.end method

.method update()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment$11;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->getTheme(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 386
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$11;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    .line 389
    :goto_0
    return-void

    .line 383
    :pswitch_0
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$11;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
