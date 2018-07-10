.class public Lcom/koushikdutta/widgets/SeparatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final TYPE_SECTION_HEADER:I


# instance fields
.field private final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hiddenSections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hideEmpty:Z

.field private observer:Landroid/database/DataSetObserver;

.field private final sections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->hiddenSections:Ljava/util/HashSet;

    .line 41
    new-instance v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter$1;-><init>(Lcom/koushikdutta/widgets/SeparatedListAdapter;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->observer:Landroid/database/DataSetObserver;

    .line 60
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->getListHeaderResource()I

    move-result v1

    const v2, 0x1020014

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 61
    return-void
.end method

.method private getItemAdapterInfo(I)Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;
    .locals 8
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/koushikdutta/widgets/SeparatedListAdapter",
            "<TT;>.ItemAdapterInfo;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const/4 v6, 0x0

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 120
    iget-object v7, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, "section":Ljava/lang/String;
    iget-object v7, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 122
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    .line 123
    .local v5, "size":I
    invoke-direct {p0, v3, v0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->isSectionHeaderHidden(Ljava/lang/String;Landroid/widget/Adapter;)Z

    move-result v4

    .line 124
    .local v4, "sectionHidden":Z
    if-nez v4, :cond_0

    .line 125
    add-int/lit8 v5, v5, 0x1

    .line 128
    :cond_0
    if-ge p1, v5, :cond_2

    .line 129
    new-instance v2, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;

    invoke-direct {v2, p0, v6}, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;-><init>(Lcom/koushikdutta/widgets/SeparatedListAdapter;Lcom/koushikdutta/widgets/SeparatedListAdapter$1;)V

    .line 130
    .local v2, "info":Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>.ItemAdapterInfo;"
    iput-object v0, v2, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->adapter:Landroid/widget/Adapter;

    .line 131
    iput p1, v2, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    .line 132
    if-eqz v4, :cond_1

    .line 133
    iget v6, v2, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    .line 134
    :cond_1
    iput v1, v2, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->adapterPosition:I

    .line 135
    iput-object v3, v2, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->section:Ljava/lang/String;

    .line 142
    .end local v0    # "adapter":Landroid/widget/Adapter;, "TT;"
    .end local v2    # "info":Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>.ItemAdapterInfo;"
    .end local v3    # "section":Ljava/lang/String;
    .end local v4    # "sectionHidden":Z
    .end local v5    # "size":I
    :goto_1
    return-object v2

    .line 140
    .restart local v0    # "adapter":Landroid/widget/Adapter;, "TT;"
    .restart local v3    # "section":Ljava/lang/String;
    .restart local v4    # "sectionHidden":Z
    .restart local v5    # "size":I
    :cond_2
    sub-int/2addr p1, v5

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "adapter":Landroid/widget/Adapter;, "TT;"
    .end local v3    # "section":Ljava/lang/String;
    .end local v4    # "sectionHidden":Z
    .end local v5    # "size":I
    :cond_3
    move-object v2, v6

    .line 142
    goto :goto_1
.end method

.method private isSectionHeaderHidden(Ljava/lang/String;Landroid/widget/Adapter;)Z
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    .local p2, "adapter":Landroid/widget/Adapter;, "TT;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->hiddenSections:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->hideEmpty:Z

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSection(ILjava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    .local p3, "adapter":Landroid/widget/Adapter;, "TT;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2, p1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 90
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-interface {p3, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 92
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method

.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    .local p2, "adapter":Landroid/widget/Adapter;, "TT;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 66
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 165
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const/4 v3, 0x0

    .line 166
    .local v3, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 167
    iget-object v4, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "section":Ljava/lang/String;
    iget-object v4, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 169
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 170
    invoke-direct {p0, v2, v0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->isSectionHeaderHidden(Ljava/lang/String;Landroid/widget/Adapter;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "adapter":Landroid/widget/Adapter;, "TT;"
    .end local v2    # "section":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public getHideEmptySections()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->hideEmpty:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 154
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->getItemAdapterInfo(I)Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;

    move-result-object v0

    .line 155
    .local v0, "info":Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>.ItemAdapterInfo;"
    if-nez v0, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    .line 157
    :cond_0
    iget v1, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    if-nez v1, :cond_1

    .line 158
    iget-object v1, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->section:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->adapter:Landroid/widget/Adapter;

    iget v2, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemAdapter(I)Landroid/widget/Adapter;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 146
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->getItemAdapterInfo(I)Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;

    move-result-object v0

    .line 147
    .local v0, "info":Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>.ItemAdapterInfo;"
    if-nez v0, :cond_0

    .line 148
    const/4 v1, 0x0

    .line 149
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->adapter:Landroid/widget/Adapter;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 217
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 192
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->getItemAdapterInfo(I)Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;

    move-result-object v0

    .line 193
    .local v0, "info":Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>.ItemAdapterInfo;"
    if-nez v0, :cond_0

    .line 194
    const/4 v1, -0x1

    .line 197
    :goto_0
    return v1

    .line 195
    :cond_0
    iget v1, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    if-nez v1, :cond_1

    .line 196
    const/4 v1, 0x0

    goto :goto_0

    .line 197
    :cond_1
    iget v1, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->adapterPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->adapter:Landroid/widget/Adapter;

    iget v3, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getListHeaderResource()I
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    sget v0, Lcom/koushikdutta/widgets/R$layout;->list_header:I

    return v0
.end method

.method public getSection(Ljava/lang/String;)Landroid/widget/Adapter;
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    return-object v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getSections()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 207
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->getItemAdapterInfo(I)Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;

    move-result-object v0

    .line 208
    .local v0, "info":Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>.ItemAdapterInfo;"
    if-nez v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    .line 210
    :cond_0
    iget v1, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    iget v2, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->adapterPosition:I

    invoke-virtual {v1, v2, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->adapter:Landroid/widget/Adapter;

    iget v2, v0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->position:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 184
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const/4 v2, 0x2

    .line 185
    .local v2, "total":I
    iget-object v3, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 186
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 187
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public hideSectionHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 56
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->hiddenSections:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 202
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSection(Ljava/lang/String;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 96
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v1, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 98
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public setHideEmptySections(Z)V
    .locals 0
    .param p1, "hideEmptySections"    # Z

    .prologue
    .line 74
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->hideEmpty:Z

    .line 75
    return-void
.end method
