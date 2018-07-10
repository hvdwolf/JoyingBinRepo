.class public Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/widgets/BetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/koushikdutta/widgets/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public ALPHA:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public ALPHAIGNORECASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public NONE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Landroid/widget/Filter;

.field name:Ljava/lang/String;

.field private sorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field sorting:Z

.field final synthetic this$0:Lcom/koushikdutta/widgets/BetterListFragment;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 135
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$1;-><init>(Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->ALPHA:Ljava/util/Comparator;

    .line 142
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$2;-><init>(Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->ALPHAIGNORECASE:Ljava/util/Comparator;

    .line 149
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$3;-><init>(Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->NONE:Ljava/util/Comparator;

    .line 76
    iput-object p3, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->name:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->sorter:Ljava/util/Comparator;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/ListItem;

    .line 97
    .local v0, "item":Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/koushikdutta/widgets/ListItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/ListItem;

    .line 108
    .local v0, "item":Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {v0}, Lcom/koushikdutta/widgets/ListItem;->getEnabled()Z

    move-result v1

    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->sorter:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->sorting:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->sorting:Z

    .line 116
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->sorter:Ljava/util/Comparator;

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->sorting:Z

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setFilter(Landroid/widget/Filter;)V
    .locals 0
    .param p1, "filter"    # Landroid/widget/Filter;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->filter:Landroid/widget/Filter;

    .line 87
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public setSort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "sorter":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/koushikdutta/widgets/ListItem;>;"
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->sorter:Ljava/util/Comparator;

    .line 127
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->notifyDataSetChanged()V

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v0, v0, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->notifyDataSetChanged()V

    .line 129
    return-void
.end method
