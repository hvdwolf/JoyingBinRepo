.class Lcom/koushikdutta/superuser/PolicyFragment$4;
.super Ljava/lang/Object;
.source "PolicyFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PolicyFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragment$4;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragment$4;->this$0:Lcom/koushikdutta/superuser/PolicyFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/PolicyFragment;->showAllLogs()V

    .line 249
    const/4 v0, 0x1

    return v0
.end method
