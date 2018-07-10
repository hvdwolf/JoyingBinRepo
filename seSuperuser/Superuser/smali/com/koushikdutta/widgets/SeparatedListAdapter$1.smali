.class Lcom/koushikdutta/widgets/SeparatedListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/widgets/SeparatedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/widgets/SeparatedListAdapter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/widgets/SeparatedListAdapter;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter$1;, "Lcom/koushikdutta/widgets/SeparatedListAdapter.1;"
    iput-object p1, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter$1;->this$0:Lcom/koushikdutta/widgets/SeparatedListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter$1;, "Lcom/koushikdutta/widgets/SeparatedListAdapter.1;"
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 45
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter$1;->this$0:Lcom/koushikdutta/widgets/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter$1;, "Lcom/koushikdutta/widgets/SeparatedListAdapter.1;"
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter$1;->this$0:Lcom/koushikdutta/widgets/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->notifyDataSetInvalidated()V

    .line 52
    return-void
.end method
