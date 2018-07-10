.class public Lcom/koushikdutta/superuser/SettingsFragment;
.super Lcom/koushikdutta/widgets/BetterListFragment;
.source "SettingsFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field pinItem:Lcom/koushikdutta/widgets/ListItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/koushikdutta/widgets/BetterListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method checkPin()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 89
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->isPinProtected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 91
    .local v5, "d":Landroid/app/Dialog;
    const v0, 0x7f050017

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 92
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$3;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/SettingsFragment$3;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment$3;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 116
    .end local v5    # "d":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->setPin()V

    goto :goto_0
.end method

.method confirmPin(Ljava/lang/String;)V
    .locals 8
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 46
    new-instance v6, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    .local v6, "d":Landroid/app/Dialog;
    const v0, 0x7f050010

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 48
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$1;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/superuser/SettingsFragment$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment$1;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 68
    return-void
.end method

.method protected getListFragmentResource()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f03001c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f050047

    const v6, 0x7f050046

    const/4 v4, 0x0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 125
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$4;

    const v3, 0x7f05004b

    move-object v1, p0

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/SettingsFragment$4;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;III)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010014

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 180
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->getMultiuserMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$5;

    const v1, 0x7f05002a

    invoke-direct {v0, p0, p0, v1, v4}, Lcom/koushikdutta/superuser/SettingsFragment$5;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;II)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 242
    :cond_0
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$6;

    const v1, 0x7f05000a

    invoke-direct {v0, p0, p0, v1, v4}, Lcom/koushikdutta/superuser/SettingsFragment$6;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;II)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const/high16 v1, 0x7f010000

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 289
    new-instance v1, Lcom/koushikdutta/superuser/SettingsFragment$7;

    const v2, 0x7f05003a

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->isPinProtected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f05003c

    :goto_0
    invoke-direct {v1, p0, p0, v2, v0}, Lcom/koushikdutta/superuser/SettingsFragment$7;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;II)V

    invoke-virtual {p0, v6, v1}, Lcom/koushikdutta/superuser/SettingsFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010011

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragment;->pinItem:Lcom/koushikdutta/widgets/ListItem;

    .line 298
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$8;

    const v1, 0x7f050043

    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f050044

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/koushikdutta/superuser/util/Settings;->getRequestTimeout(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/koushikdutta/superuser/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/koushikdutta/superuser/SettingsFragment$8;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010012

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 320
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$9;

    const v1, 0x7f050023

    const v2, 0x7f050024

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/koushikdutta/superuser/SettingsFragment$9;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;II)V

    invoke-virtual {p0, v7, v0}, Lcom/koushikdutta/superuser/SettingsFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f01000e

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/koushikdutta/widgets/ListItem;->setCheckboxVisible(Z)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/superuser/util/Settings;->getLogging(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setChecked(Z)Lcom/koushikdutta/widgets/ListItem;

    .line 331
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$10;

    const v1, 0x7f050033

    invoke-direct {v0, p0, p0, v1, v4}, Lcom/koushikdutta/superuser/SettingsFragment$10;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;II)V

    invoke-virtual {p0, v7, v0}, Lcom/koushikdutta/superuser/SettingsFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010010

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 378
    const-string v0, "com.koushikdutta.superuser"

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$11;

    const v1, 0x7f050050

    invoke-direct {v0, p0, p0, v1, v4}, Lcom/koushikdutta/superuser/SettingsFragment$11;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Lcom/koushikdutta/widgets/BetterListFragment;II)V

    invoke-virtual {p0, v7, v0}, Lcom/koushikdutta/superuser/SettingsFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010013

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 422
    :cond_1
    return-void

    .line 289
    :cond_2
    const v0, 0x7f05003b

    goto/16 :goto_0
.end method

.method setPin()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 72
    .local v5, "d":Landroid/app/Dialog;
    const v0, 0x7f050016

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 73
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragment$2;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/SettingsFragment$2;-><init>(Lcom/koushikdutta/superuser/SettingsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragment$2;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 86
    return-void
.end method
