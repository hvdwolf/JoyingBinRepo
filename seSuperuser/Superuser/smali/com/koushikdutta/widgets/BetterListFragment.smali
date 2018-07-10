.class public Lcom/koushikdutta/widgets/BetterListFragment;
.super Landroid/app/Fragment;
.source "BetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;,
        Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;,
        Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

.field mListView:Landroid/widget/ListView;

.field private mListener:Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;

.field mTitleContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 255
    return-void
.end method


# virtual methods
.method public addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "sectionName"    # I
    .param p2, "item"    # Lcom/koushikdutta/widgets/ListItem;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/koushikdutta/widgets/BetterListFragment;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(ILcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "sectionName"    # I
    .param p2, "item"    # Lcom/koushikdutta/widgets/ListItem;
    .param p3, "index"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/koushikdutta/widgets/BetterListFragment;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/koushikdutta/widgets/ListItem;

    .prologue
    .line 198
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/widgets/BetterListFragment;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;
    .locals 3
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/koushikdutta/widgets/ListItem;
    .param p3, "index"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSection(Ljava/lang/String;)Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    .line 214
    .local v0, "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    .end local v0    # "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    .restart local v0    # "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 217
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 225
    invoke-virtual {v0, p2, p3}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->insert(Ljava/lang/Object;I)V

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 230
    return-object p2

    .line 227
    :cond_1
    invoke-virtual {v0, p2}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->clear()V

    .line 284
    :cond_0
    return-void
.end method

.method public clearSection(I)V
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/BetterListFragment;->clearSection(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public clearSection(Ljava/lang/String;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSection(Ljava/lang/String;)Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    .line 292
    .local v0, "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->clear()V

    .line 295
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public ensureHeader(I)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .locals 2
    .param p1, "sectionName"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSectionCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/widgets/BetterListFragment;->ensureHeader(ILjava/lang/String;)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public ensureHeader(II)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "sectionName"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/widgets/BetterListFragment;->ensureHeader(ILjava/lang/String;)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public ensureHeader(ILjava/lang/String;)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .locals 3
    .param p1, "index"    # I
    .param p2, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, p2}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSection(Ljava/lang/String;)Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    .line 172
    .local v0, "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    .end local v0    # "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .restart local v0    # "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, p1, p2, v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->addSection(ILjava/lang/String;Landroid/widget/Adapter;)V

    .line 175
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    :cond_0
    return-object v0
.end method

.method public ensureHeader(Ljava/lang/String;)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSectionCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/widgets/BetterListFragment;->ensureHeader(ILjava/lang/String;)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public findItem(I)Lcom/koushikdutta/widgets/ListItem;
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v5}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSections()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    .line 238
    .local v0, "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 239
    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/widgets/ListItem;

    .line 240
    .local v3, "li":Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {v3}, Lcom/koushikdutta/widgets/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    .end local v0    # "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .end local v1    # "i":I
    .end local v3    # "li":Lcom/koushikdutta/widgets/ListItem;
    :goto_1
    return-object v3

    .line 238
    .restart local v0    # "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .restart local v1    # "i":I
    .restart local v3    # "li":Lcom/koushikdutta/widgets/ListItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .end local v1    # "i":I
    .end local v3    # "li":Lcom/koushikdutta/widgets/ListItem;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAdapter()Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getListFragmentResource()I
    .locals 1

    .prologue
    .line 264
    sget v0, Lcom/koushikdutta/widgets/R$layout;->list_fragment:I

    return v0
.end method

.method protected getListHeaderResource()I
    .locals 1

    .prologue
    .line 274
    sget v0, Lcom/koushikdutta/widgets/R$layout;->list_header:I

    return v0
.end method

.method protected getListItemResource()I
    .locals 1

    .prologue
    .line 278
    sget v0, Lcom/koushikdutta/widgets/R$layout;->list_item:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getListener()Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListener:Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;

    return-object v0
.end method

.method public getSection(I)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/BetterListFragment;->getSection(Ljava/lang/String;)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSection(Ljava/lang/String;)Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSection(Ljava/lang/String;)Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    return-object v0
.end method

.method public getSectionItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/BetterListFragment;->getSectionItemCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSectionItemCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSection(Ljava/lang/String;)Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    .line 207
    .local v0, "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    if-nez v0, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 209
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public getTitleContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mTitleContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 328
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 329
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 382
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    .line 383
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListener:Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListener:Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 261
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 342
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getListFragmentResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, "ret":Landroid/view/View;
    sget v1, Lcom/koushikdutta/widgets/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mTitleContainer:Landroid/view/ViewGroup;

    .line 346
    sget v1, Lcom/koushikdutta/widgets/R$id;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    .line 347
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/koushikdutta/widgets/BetterListFragment$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/widgets/BetterListFragment$1;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 359
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/koushikdutta/widgets/BetterListFragment$2;

    invoke-direct {v2, p0}, Lcom/koushikdutta/widgets/BetterListFragment$2;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 372
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    sget v2, Lcom/koushikdutta/widgets/R$id;->empty:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 374
    invoke-virtual {p0, p3, v0}, Lcom/koushikdutta/widgets/BetterListFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 375
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 376
    return-object v0
.end method

.method onListItemClick(Lcom/koushikdutta/widgets/ListItem;)V
    .locals 0
    .param p1, "li"    # Lcom/koushikdutta/widgets/ListItem;

    .prologue
    .line 269
    return-void
.end method

.method public removeItem(Lcom/koushikdutta/widgets/ListItem;)V
    .locals 3
    .param p1, "item"    # Lcom/koushikdutta/widgets/ListItem;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v2}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getSections()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    .line 308
    .local v0, "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    .end local v0    # "adapter":Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v2}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 311
    return-void
.end method

.method public removeSection(I)V
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/BetterListFragment;->removeSection(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public removeSection(Ljava/lang/String;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->removeSection(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public setEmpty(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    sget v1, Lcom/koushikdutta/widgets/R$id;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragment;->mListener:Lcom/koushikdutta/widgets/BetterListFragment$ActivityBaseFragmentListener;

    .line 254
    return-void
.end method
