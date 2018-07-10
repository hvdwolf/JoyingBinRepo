.class public Lcom/koushikdutta/widgets/ListContentFragment;
.super Lcom/koushikdutta/widgets/BetterListFragment;
.source "ListContentFragment.java"


# instance fields
.field mContainer:Landroid/view/ViewGroup;

.field mContent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/koushikdutta/widgets/BetterListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragment;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getContentId()I
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->isPaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget v0, Lcom/koushikdutta/widgets/R$id;->activity_content:I

    .line 61
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/koushikdutta/widgets/R$id;->content:I

    goto :goto_0
.end method

.method protected getListFragmentResource()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/koushikdutta/widgets/R$layout;->list_content:I

    return v0
.end method

.method protected getListHeaderResource()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/koushikdutta/widgets/R$layout;->list_content_header:I

    return v0
.end method

.method protected getListItemResource()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/koushikdutta/widgets/R$layout;->list_item_selectable:I

    return v0
.end method

.method public isPaged()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragment;->mContent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "ret"    # Landroid/view/View;

    .prologue
    .line 42
    sget v0, Lcom/koushikdutta/widgets/R$id;->content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragment;->mContent:Landroid/view/ViewGroup;

    .line 43
    sget v0, Lcom/koushikdutta/widgets/R$id;->list_content_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragment;->mContainer:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 46
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->isPaged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    sget v0, Lcom/koushikdutta/widgets/R$id;->content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public setContent(Landroid/app/Fragment;ZLjava/lang/String;)V
    .locals 5
    .param p1, "content"    # Landroid/app/Fragment;
    .param p2, "clearChoices"    # Z
    .param p3, "breadcrumb"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 66
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 67
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->isPaged()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {v2, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 69
    const-string v3, "content"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v2, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 71
    invoke-virtual {v2, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 72
    invoke-virtual {v2, p3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 78
    :cond_0
    :goto_0
    const-string v3, "content"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 79
    .local v0, "c":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->isPaged()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    invoke-virtual {v2, p3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 84
    :cond_1
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 85
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getContentId()I

    move-result v3

    const-string v4, "content"

    invoke-virtual {v2, v3, p1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 86
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 88
    if-eqz p2, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    .line 90
    :cond_2
    return-void

    .line 75
    .end local v0    # "c":Landroid/app/Fragment;
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/koushikdutta/widgets/R$id;->content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
