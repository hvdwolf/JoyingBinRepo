.class Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$3;
.super Ljava/lang/Object;
.source "BetterListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/koushikdutta/widgets/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$3;->this$1:Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/widgets/ListItem;)I
    .locals 2
    .param p1, "lhs"    # Lcom/koushikdutta/widgets/ListItem;
    .param p2, "rhs"    # Lcom/koushikdutta/widgets/ListItem;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$3;->this$1:Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$3;->this$1:Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;

    invoke-virtual {v1, p2}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 149
    check-cast p1, Lcom/koushikdutta/widgets/ListItem;

    check-cast p2, Lcom/koushikdutta/widgets/ListItem;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragment$ListItemAdapter$3;->compare(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/widgets/ListItem;)I

    move-result v0

    return v0
.end method
