.class public Lcom/koushikdutta/widgets/BetterListActivity;
.super Landroid/app/Activity;
.source "BetterListActivity.java"

# interfaces
.implements Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/koushikdutta/widgets/BetterListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->mDestroyed:Z

    .line 34
    const-class v0, Lcom/koushikdutta/widgets/BetterListFragment;

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->clazz:Ljava/lang/Class;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/koushikdutta/widgets/BetterListFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/koushikdutta/widgets/BetterListFragment;>;"
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->mDestroyed:Z

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListActivity;->clazz:Ljava/lang/Class;

    .line 30
    return-void
.end method


# virtual methods
.method protected addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;
    .locals 2
    .param p1, "sectionName"    # I
    .param p2, "item"    # Lcom/koushikdutta/widgets/ListItem;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getFragment()Lcom/koushikdutta/widgets/BetterListFragment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/BetterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/koushikdutta/widgets/BetterListFragment;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method protected addItem(ILcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;
    .locals 2
    .param p1, "sectionName"    # I
    .param p2, "item"    # Lcom/koushikdutta/widgets/ListItem;
    .param p3, "index"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getFragment()Lcom/koushikdutta/widgets/BetterListFragment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/BetterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/koushikdutta/widgets/BetterListFragment;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method protected addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/koushikdutta/widgets/ListItem;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getFragment()Lcom/koushikdutta/widgets/BetterListFragment;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/koushikdutta/widgets/BetterListFragment;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/koushikdutta/widgets/R$layout;->container_activity:I

    return v0
.end method

.method public getFragment()Lcom/koushikdutta/widgets/BetterListFragment;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "betterlist"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragment;

    return-object v0
.end method

.method protected getListContainerId()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/koushikdutta/widgets/R$id;->activity_content:I

    return v0
.end method

.method public isDestroyedLegacy()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->mDestroyed:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getContentView()I

    move-result v0

    .line 53
    .local v0, "cv":I
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/BetterListActivity;->setContentView(I)V

    .line 56
    :cond_0
    if-nez p1, :cond_2

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/widgets/BetterListActivity;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/widgets/BetterListFragment;

    .line 59
    .local v2, "fragment":Lcom/koushikdutta/widgets/BetterListFragment;
    invoke-virtual {v2, p0}, Lcom/koushikdutta/widgets/BetterListFragment;->setListener(Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/widgets/BetterListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getListContainerId()I

    move-result v4

    const-string v5, "betterlist"

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2    # "fragment":Lcom/koushikdutta/widgets/BetterListFragment;
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getFragment()Lcom/koushikdutta/widgets/BetterListFragment;

    move-result-object v2

    .line 69
    .restart local v2    # "fragment":Lcom/koushikdutta/widgets/BetterListFragment;
    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v2, p0}, Lcom/koushikdutta/widgets/BetterListFragment;->setListener(Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->mDestroyed:Z

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    return-void
.end method

.method public setEmpty(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getFragment()Lcom/koushikdutta/widgets/BetterListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragment;->setEmpty(I)V

    .line 93
    return-void
.end method
