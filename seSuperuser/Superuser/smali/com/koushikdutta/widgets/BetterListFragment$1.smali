.class Lcom/koushikdutta/widgets/BetterListFragment$1;
.super Ljava/lang/Object;
.source "BetterListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/widgets/BetterListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/widgets/BetterListFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragment$1;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragment$1;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v2, v2, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v2, p3}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 351
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Lcom/koushikdutta/widgets/ListItem;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 352
    check-cast v1, Lcom/koushikdutta/widgets/ListItem;

    .line 353
    .local v1, "li":Lcom/koushikdutta/widgets/ListItem;
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragment$1;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/widgets/BetterListFragment;->onListItemClick(Lcom/koushikdutta/widgets/ListItem;)V

    .line 354
    invoke-virtual {v1, p2}, Lcom/koushikdutta/widgets/ListItem;->onClickInternal(Landroid/view/View;)V

    .line 356
    .end local v1    # "li":Lcom/koushikdutta/widgets/ListItem;
    :cond_0
    return-void
.end method
