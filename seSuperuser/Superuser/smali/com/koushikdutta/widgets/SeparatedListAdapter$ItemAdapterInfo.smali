.class Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;
.super Ljava/lang/Object;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/widgets/SeparatedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAdapterInfo"
.end annotation


# instance fields
.field adapter:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field adapterPosition:I

.field position:I

.field section:Ljava/lang/String;

.field final synthetic this$0:Lcom/koushikdutta/widgets/SeparatedListAdapter;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/widgets/SeparatedListAdapter;)V
    .locals 0

    .prologue
    .line 111
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>.ItemAdapterInfo;"
    iput-object p1, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;->this$0:Lcom/koushikdutta/widgets/SeparatedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/widgets/SeparatedListAdapter;Lcom/koushikdutta/widgets/SeparatedListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/koushikdutta/widgets/SeparatedListAdapter;
    .param p2, "x1"    # Lcom/koushikdutta/widgets/SeparatedListAdapter$1;

    .prologue
    .line 111
    .local p0, "this":Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;, "Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>.ItemAdapterInfo;"
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/SeparatedListAdapter$ItemAdapterInfo;-><init>(Lcom/koushikdutta/widgets/SeparatedListAdapter;)V

    return-void
.end method
