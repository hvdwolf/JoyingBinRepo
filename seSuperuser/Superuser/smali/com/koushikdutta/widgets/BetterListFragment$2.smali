.class Lcom/koushikdutta/widgets/BetterListFragment$2;
.super Ljava/lang/Object;
.source "BetterListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 359
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragment$2;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragment$2;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    iget-object v2, v2, Lcom/koushikdutta/widgets/BetterListFragment;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;

    invoke-virtual {v2, p3}, Lcom/koushikdutta/widgets/BetterListFragment$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Lcom/koushikdutta/widgets/ListItem;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 365
    check-cast v1, Lcom/koushikdutta/widgets/ListItem;

    .line 366
    .local v1, "li":Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {v1}, Lcom/koushikdutta/widgets/ListItem;->onLongClick()Z

    move-result v2

    .line 368
    .end local v1    # "li":Lcom/koushikdutta/widgets/ListItem;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
