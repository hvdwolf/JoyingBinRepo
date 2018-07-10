.class Lcom/koushikdutta/superuser/SettingsFragment$5;
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
    .line 181
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;II)V

    .line 210
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment$5;->update()V

    .line 211
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05002a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 219
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050028

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f050026

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f05002c

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 220
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcom/koushikdutta/superuser/SettingsFragment$5$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/SettingsFragment$5$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragment$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 238
    return-void
.end method

.method update()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 183
    const/4 v0, -0x1

    .line 184
    .local v0, "res":I
    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/superuser/util/Settings;->getMultiuserMode(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/superuser/Helper;->isAdminUser(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/koushikdutta/superuser/SettingsFragment$5;->setEnabled(Z)Lcom/koushikdutta/widgets/ListItem;

    .line 198
    const-string v1, ""

    .line 199
    .local v1, "s":Ljava/lang/String;
    if-eq v0, v3, :cond_0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/superuser/SettingsFragment$5;->this$0:Lcom/koushikdutta/superuser/SettingsFragment;

    const v4, 0x7f05002b

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/koushikdutta/superuser/SettingsFragment$5;->setSummary(Ljava/lang/String;)Lcom/koushikdutta/widgets/ListItem;

    .line 207
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 186
    :pswitch_0
    const v0, 0x7f050027

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    const v0, 0x7f050029

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    const v0, 0x7f05002d

    goto :goto_0

    .line 204
    :cond_2
    if-eq v0, v3, :cond_1

    .line 205
    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsFragment$5;->setSummary(I)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_1

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
